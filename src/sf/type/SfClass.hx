package sf.type;
import haxe.macro.Type;
import sf.type.SfBuffer;
import sf.SfCore.*;
import sf.type.SfClassField;

class SfClass extends SfClassImpl {
	public function new(t:ClassType) {
		super(t);
		for (fd in fieldList) {
			if (SfGenerator.isReserved(fd.name)) fd.name = "@" + fd.name;
		}
	}
	override public function printTo(out:SfBuffer, init:SfBuffer):Void {
		if (isHidden) return;
		if (pack.length > 0) printf(out, "namespace %s;\n", pack.join("."));
		var isInterface = classType.isInterface;
		if (isInterface) {
			out.addString("interface");
		} else {
			out.addString("class");
		}
		printf(out, " %s", name);
		out.addOptTypeParamsDecl(classType.params);
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
			switch (field.kind) {
				case FieldKind.FMethod(mk): {
					addSep();
					if (clfd.isPublic) out.addString("public ");
					if (isCtr) {
						printf(out, "%s", name);
					} else {
						if (!field.isInst) out.addString("static ");
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
					}
					out.addParClose();
					if (field.expr != null) {
						printf(out, "`{%(+\n)");
						var ol = out.length;
						printf(out, "%(sw)", field.expr);
						if (out.length > ol) out.addSemico();
						printf(out, "%(-\n)}");
					} else out.addSemico();
				};
				case FVar(AccInline, AccNever): {
					addSep();
					if (clfd.isPublic) out.addString("public ");
					printf(out, "const %mtype %s`=`%x;", field.type, field.name, field.expr);
				};
				case FVar(AccNormal, AccNormal): {
					addSep();
					if (clfd.isPublic) out.addString("public ");
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
