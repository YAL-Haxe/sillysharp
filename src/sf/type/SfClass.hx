package sf.type;
import haxe.macro.Type;
import sf.tools.SicsTypeTools;
import sf.type.expr.SfExpr;
import sf.type.expr.SfExprDef.*;
import sf.tools.SicsExprTools;
import sf.type.SfBuffer;
import sf.SfCore.*;
import sf.type.SfClassField;

class SfClass extends SfClassImpl {
	static function matchVisibility(fd:SfClassField, ref:SfClassField) {
		if (!fd.classField.isPublic && ref.classField.isPublic) fd.classField.isPublic = true;
	}
	public function new(t:ClassType) {
		super(t);
		for (fd in fieldList) {
			switch (fd.kind) {
				case FVar(read, write): {
					if (read == AccCall) {
						var fdGet = realMap["get_" + fd.realName];
						if (fdGet != null) {
							fdGet.isGetterOf = fd;
							matchVisibility(fdGet, fd);
						}
					}
					if (write == AccCall) {
						var fdSet = realMap["set_" + fd.realName];
						if (fdSet != null) {
							fdSet.isSetterOf = fd;
							matchVisibility(fdSet, fd);
						}
					}
				};
				default:
			}
			if (SfGenerator.isReserved(fd.name)) fd.name = "@" + fd.name;
		}
		for (_tfd in t.overrides) {
			var tfd = _tfd.get();
			if (tfd == null) continue;
			var fd = fieldMap[tfd.name];
			if (fd == null) continue;
			fd.isOverride = true;
		}
	}
	override public function printTo(out:SfBuffer, init:SfBuffer):Void {
		if (isHidden) return;
		if (pack.length > 0) {
			var _pack = pack.map(sfGenerator.getVarName);
			printf(out, "namespace %s;\n", _pack.join("."));
		}
		var isInterface = classType.isInterface;
		if (isInterface) {
			out.addString("interface");
		} else {
			out.addString("class");
		}
		printf(out, " %s", name);
		out.addOptTypeParamsDecl(classType.params);
		
		var sup = classType.superClass;
		if (sup != null) {
			printf(out, "`:`");
			out.addBaseTypeName(sup.t.get(), sup.params);
		}
		
		printf(out, " {%(+\n)");
		
		var prevClass = sfGenerator.currentClass;
		var prevField = sfGenerator.currentField;
		sfGenerator.currentClass = this;
		
		var abstractImpl = switch (classType.kind) {
			case KAbstractImpl(_.get() => at): at;
			default: null;
		}
		
		var sep = false;
		function printField(out:SfBuffer, init:SfBuffer, field:SfClassField) {
			if (field.isHidden) return;
			inline function addSep() {
				if (sep) {
					printf(out, "\n\n");
				} else {
					sep = true;
				}
				out.addSummaryComment(field.doc);
			}
			var isCtr = field == constructor;
			sfGenerator.currentField = field;
			var clfd = field.classField;
			
			inline function addPublic() {
				if (clfd.isPublic) {
					out.addString("public ");
				} else out.addString("internal ");
			}
			
			switch (field.kind) {
				case FieldKind.FMethod(mk): {
					addSep();
					addPublic();
					if (isCtr) {
						printf(out, "%s", name);
					} else {
						if (field.isInst) {
							if (field.isOverride || field.name == "ToString") {
								out.addString("override ");
							} else if (!clfd.isFinal && !isInterface) {
								out.addString("virtual ");
							}
						} else out.addString("static ");
						out.addMacroTypeName(field.type);
						printf(out, " %s", field.name);
					}
					
					var typeParams = clfd.params;
					if (typeParams.length == 0 && abstractImpl != null) {
						// why is .params missing on implementation fields of an abstract
						typeParams = abstractImpl.params;
					}
					out.addOptTypeParamsDecl(typeParams);
					
					out.addParOpen();
					var argSep = false;
					for (arg in field.args) {
						if (argSep) out.addComma(); else argSep = true;
						out.addMacroTypeName(arg.v.type);
						printf(out, " %s", arg.v.name);
						if (arg.value != null) {
							if (arg.value.match(TNull) && SicsTypeTools.isCsValueType(arg.v.type)) {
								//out.addString("?");
							}
							printf(out, "`=`%const", arg.value);
						}
					}
					out.addParClose();
					
					if (field.expr != null) {
						// move base() call to front:
						var exprs = switch (field.expr.def) {
							case SfBlock(xs): xs;
							default: [field.expr];
						}
						for (i => x in exprs) {
							if (!x.def.match(SfCall({def:SfConst(TSuper)}, _))) continue;
							out.addFormat(" : %x", x);
							x.def = SfBlock([]);
							break;
						}
						
						printf(out, "`{%(+\n)");
						var ol = out.length;
						printf(out, "%(sw)", field.expr);
						if (out.length > ol) out.addSemico();
						printf(out, "%(-\n)}");
					} else out.addSemico();
				};
				case FVar(AccInline, AccNever): {
					addSep();
					addPublic();
					printf(out, "const %mtype %s`=`%x;", field.type, field.name, field.expr);
				};
				case FVar(AccNormal, AccNormal|AccNo): {
					addSep();
					addPublic();
					if (!field.isInst) out.addString("static ");
					//trace(field.type);
					printf(out, "%mtype %s", field.type, field.name);
					if (field.expr != null) printf(out, "`=`%w", field.expr);
					out.addSemico();
				};
				default:
			}
		}
		for (field in instList) if (field.kind.match(FVar(_, _))) printField(out, init, field);
		if (constructor != null) printField(out, init, constructor);
		for (field in instList) if (field.kind.match(FMethod(_))) printField(out, init, field);
		
		for (field in staticList) if (field.kind.match(FVar(_, _))) printField(out, init, field);
		for (field in staticList) if (field.kind.match(FMethod(_))) printField(out, init, field);
		
		printf(out, "%(-\n)}");
		sfGenerator.currentClass = prevClass;
		sfGenerator.currentField = prevField;
	}
}
