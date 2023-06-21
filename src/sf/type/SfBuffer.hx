package sf.type;
import haxe.Json;
import haxe.extern.Rest;
import haxe.macro.Context;
import haxe.macro.Type;
import haxe.macro.TypeTools;
import sf.tools.SicsExprTools;
import sf.tools.SicsTypeTools;
import sf.type.expr.SfExpr;
using StringTools;

class SfBuffer extends SfBufferImpl {
	public var uses:SfBufferUses = null;
	
	public inline function addFormat(format:String, params:Rest<Dynamic>) {
		SfPrintf.proc(this, format, params.toArray());
	}
	
	public function addTypePathAuto(t:SfType, hasParams:Bool) {
		if (uses != null) do {
			if (hasParams) {
				if (t.isSysGeneric) {
					addString(t.name);
					uses.generics = true;
					return;
				} else break;
			}
			addString(uses.shorten(t));
			return;
		} while (false);
		addTypePath(t, ".".code);
	}
	
	public function addFieldPathAuto(f:SfField) {
		if (uses != null) {
			if (f.exposePath != null) {
				addString(f.exposePath);
				return;
			}
			addTypePathAuto(f.parentType, false);
			addDot();
			addString(f.name);
			return;
		}
		addFieldPath(f, ".".code, ".".code);
	}
	
	public function addFieldPathExt(s:SfField, start:Int) {
		var packSep = ".".code;
		var dotSep = ".".code;
		var e = s.exposePath;
		if (e != null) {
			addString(e);
			return;
		}
		var l = length;
		var t = s.parentType;
		if (t.exposePath == null) {
			var p = t.pack;
			var n = p.length;
			var i = start;
			while (i < n) {
				addString(p[i]);
				addChar(packSep);
				i += 1;
			}
			addString(t.name);
		} else addString(t.exposePath);
		if (length > l) addChar(dotSep);
		addString(s.name);
	}
	
	public function addOptTypeParamsDecl(par:Array<TypeParameter>) {
		if (par == null) return;
		var np = par.length;
		if (np == 0) return;
		addChar("<".code);
		var i = -1;
		while (++i < np) {
			if (i > 0) addComma();
			var tp = par[i];
			addString(tp.name);
		}
		addChar(">".code);
	}
	public function addOptTypeParams(par:Array<Type>) {
		if (par == null) return;
		var np = par.length;
		if (np == 0) return;
		addChar("<".code);
		var i = -1;
		while (++i < np) {
			if (i > 0) addComma();
			addMacroTypeName(par[i]);
		}
		addChar(">".code);
	}
	public function addBaseTypeName(bt:BaseType, ?par:Array<Type>) {
		var t = SfCore.sfGenerator.typeMap.baseGet(bt);
		if (t != null) {
			addTypePathAuto(t, par != null && par.length > 0);
			addOptTypeParams(par);
			return;
		}
		for (p in bt.pack) {
			addString(p);
			addDot();
		}
		addString(bt.name);
		addOptTypeParams(par);
	}
	function getBaseType(t:Type) {
		var tp:Array<Type> = null;
		var bt:BaseType = switch (t) {
			case TInst(_.get() => ct, p): tp = p; ct;
			case TAbstract(_.get() => at, p): tp = p; at;
			case TLazy(_() => t1): return getBaseType(t1);
			case TType(_.get() => dt, p): tp = p; dt;
			case TEnum(_.get() => et, p): tp = p; et;
			default: null;
		}
		return { baseType: bt, params: tp };
	}
	function traceFields(obj:Any, label:String = "") {
		trace("---" + label + "---");
		for (fd in Reflect.fields(obj)) {
			trace(fd, Reflect.field(obj, fd));
		}
	}
	public function addMacroTypeName(mt:Type, depth:Int = 0) {
		if (++depth >= 32) {
			switch (mt) {
				case TAbstract(_.get() => at, p): trace(at, p);
				default:
			}
			addString("object /* overflow:" + mt + " */");
			return;
		}
		// hm, that's bad, both follow() and followWithAbstracts() discard a Null<>
		switch (mt) {
			case TAbstract(_.get() => {module:"StdTypes", name:"Null"}, [p]): {
				addMacroTypeName(p);
				if (SicsTypeTools.isCsValueType(p)) addString("?");
				return;
			};
			default:
		}
		mt = TypeTools.followWithAbstracts(mt);
		switch (mt) { // can return
			case TEnum(_.get() => et, p): addBaseTypeName(et, p);
			case TInst(_.get() => ct, p): {
				switch (ct.kind) {
					case KTypeParameter(_):
						addString(ct.name);
						return;
					default:
				}
				if (ct.module == "String" && ct.name == "String") {
					addString("string");
					return;
				}
				if (ct.module == "cs.NativeArray" && ct.name == "NativeArray" && p.length == 1) {
					addMacroTypeName(p[0]);
					addString("[]");
					return;
				}
				addBaseTypeName(ct, p);
			};
			case TType(_.get() => dt, p): addMacroTypeName(dt.type, depth);
			case TDynamic(t): addString("object");
			case TLazy(_() => mtl): addMacroTypeName(mtl, depth);
			case TFun(args, ret): {
				var hasReturn = switch (ret) {
					case TAbstract(_.get() => {module:"StdTypes", name:"Void"}, _): false;
					default: true;
				}
				addFormat("System.%s", hasReturn ? "Func" : "Action");
				if (hasReturn || args.length > 0) {
					addChar("<".code);
					var n = 0;
					for (arg in args) {
						if (++n > 1) addComma();
						addMacroTypeName(arg.t);
					}
					if (hasReturn) {
						if (n > 0) addComma();
						addMacroTypeName(ret);
					}
					addChar(">".code);
				}
			};
			case TAbstract(_.get() => at, p): {
				var found = true;
				switch (at.module) {
					case "StdTypes": switch (at.name) {
						case "Bool": addString("bool");
						case "Int": addString("int");
						case "Float": addString("double");
						case "String": addString("string");
						case "Void": addString("void");
						case "Null": addMacroTypeName(p[0]); addString("?");
						default: found = false;
					};
					case "cs.StdTypes": switch (at.name) {
						case "Int8": addString("sbyte");
						case "UInt8": addString("byte");
						case "Int16": addString("short");
						case "UInt16": addString("ushort");
						default: found = false;
					};
					default: found = false;
				}
				if (!found) {
					var impl = at.type;
					switch (impl) {
						case TAbstract(_.get() => at1, []) if (p.length == 0
							&& at.module == at1.module
							&& at.name == at1.name
						): {
							addBaseTypeName(at, p);
							return;
						}
						default:
					}
					if (at.isExtern || at.meta.has(":coreType")) {
						addBaseTypeName(at, p);
					} else {
						if (at.name == "Vector") {
							var ip = getBaseType(impl);
							traceFields(at, "at");
							traceFields(ip.baseType, "bt");
							trace(ip.params);
						}
						addMacroTypeName(impl, depth);
					}
				}
			};
			default: addString("object /* unknown:" + mt + " */");
		}
	}
	static var addSummaryComment_rx = ~/^\s*\*\s*/;
	public function addSummaryComment(doc:String) {
		if (doc == null) return;
		doc = doc.trim();
		if (doc == "") return;
		doc = doc.replace("\r", "");
		addString("/// <summary>");
		var rx = addSummaryComment_rx;
		var lines = doc.split("\n");
		if (lines.length > 1) {
			for (line in lines) {
				addLine();
				addString("/// ");
				if (rx.match(line)) line = rx.matchedRight();
				addString(line.trim());
			}
			addLine();
			addString("/// </summary>");
		} else {
			if (rx.match(doc)) doc = rx.matchedRight();
			addString(doc);
			addString("</summary>");
		}
		addLine();
	}
}