package sf;
import haxe.macro.Compiler;
import haxe.macro.Context;
import haxe.macro.Expr.Binop;
import haxe.macro.Type.TConstant;
import sf.opt.*;
import sf.gen.*;
import sf.tools.SicsExprTools;
import sf.type.SfBuffer;
import sf.type.SfBufferUses;
import sf.type.SfClass;
import sf.type.SfPrintFlags;
import sf.type.SfType;
import sf.type.expr.SfExpr;
import sf.type.expr.SfExprDef.*;
import sys.FileSystem;
import sys.io.File;
import sf.SfCore.*;
using sf.type.expr.SfExprTools;
using StringTools;

/**
 * ...
 * @author YellowAfterlife
 */
class SfGenerator extends SfGeneratorImpl {
	public function new() {
		super();
		Compiler.addClassPath(Context.resolvePath("../sics-autogen"));
		Compiler.addClassPath(Context.resolvePath("../sics-std"));
	}
	
	var typeSyntax:SfClass;
	override function typeInit():Void {
		super.typeInit();
		typeSyntax = typeFindReal("cs.Syntax");
	}
	
	var _printf = new SicsPrintf();
	override public function printFormat(out:SfBuffer, fmt:String, val:Dynamic):Bool {
		return _printf.printf(out, fmt, val);
	}
	
	override public function printConst(r:SfBuffer, value:TConstant, expr:SfExpr):Void {
		switch (value) {
			case TString(s): {
				var q = '"'.code;
				r.addChar(q);
				for (i in 0 ... s.length) {
					var c = StringTools.fastCodeAt(s, i), d;
					if (c < 32) switch (c) {
						case "\r".code: r.addChar2("\\".code, "r".code);
						case "\n".code: r.addChar2("\\".code, "n".code);
						case "\t".code: r.addChar2("\\".code, "t".code);
						default:
							r.addChar2("\\".code, "x".code);
							d = c >> 4; r.addChar(d < 10 ? 48 + d : 55 + d);
							d = c & 15; r.addChar(d < 10 ? 48 + d : 55 + d);
					} else {
						if (c == q || c == "\\".code) r.addChar("\\".code);
						r.addChar(c);
					}
				}
				r.addChar(q);
			};
			case TSuper: r.addString("base");
			default: super.printConst(r, value, expr);
		}
	}
	
	public static function isReserved(name:String) {
		return switch (name) {
			case "byte", "int", "string", "out": true;
			default: false;
		}
	}
	
	override public function getVarName(name:String) {
		if (isReserved(name)) return "@" + name;
		return name;
	}
	
	static var nullExprCounter = 0;
	override public function printExpr(out:SfBuffer, expr:SfExpr, flags:SfPrintFlags):Void {
		if (expr == null) {
			printf(out, "!!nullexpr %d!!", ++nullExprCounter);
			Context.warning("Null expr, that shouldn't happen"
				+ haxe.CallStack.toString(haxe.CallStack.callStack()),
				haxe.macro.PositionTools.make({min:0, max:0, file:sfGenerator.outputPath}));
			return;
		}
		if (flags == null) throw "Flags is null";
		
		switch (expr.def) { // can return
			//{
			case SfConst(c): printConst(out, c, expr);
			case SfTypeExpr(t): out.addTypePathAuto(t, false);
			case SfEnumField(en, ef): {
				out.addFieldPathAuto(ef);
			};
			//}
			//{
			case SfStaticField(cl, cf): out.addFieldPathAuto(cf);
			case SfInstField({def:SfConst(TThis)}, cf): out.addString(cf.name);
			case SfInstField(x, cf): printf(out, "%x.%s", x, cf.name);
			case SfArrayAccess(x, xi): printf(out, "%x[%x]", x, xi);
			//
			case SfVarDecl(v, hasSet, x): {
				var useVar = hasSet;
				if (hasSet && x.def.match(SfConst(TNull))) useVar = false;
				if (useVar) {
					printf(out, "var %s", v.name);
				} else printf(out, "%mtype %s", v.type, v.name);
				if (hasSet) printf(out, "`=`%w", x);
			};
			case SfLocal(v): printf(out, "%s", v.name);
			//}
			//{
			case SfBinop(o, a, b): {
				printf(out, "%x", a);
				SicsGenOp.printBinOp(out, o, expr);
				printf(out, "%x", b);
			};
			case SfUnop(o, pfx, x): {
				if (pfx) printf(out, "%x", x);
				out.addString(switch (o) {
					case OpIncrement: "++";
					case OpDecrement: "--";
					case OpNot: "!";
					case OpNeg: "-";
					case OpNegBits: "~";
					case OpSpread: "...";
				});
				if (!pfx) printf(out, "%x", x);
			};
			case SfCast(x, null): printf(out, "%x", x);
			//}
			//{
			case SfMeta(m, x): printExpr(out, x, flags);
			case SfParenthesis(x): printf(out, "(%w)", x);
			case SfDynamic(code, args): SicsSyntaxCode.print(out, expr, code, args);
			//{ special calls
			case SfCall(x = {def:SfStaticField({realPath:"cs.Lib"}, cf)}, args): {
				switch (cf.realName) {
					case "as": out.addFormat("%x as %x", args[0], args[1]);
					case "fromCharCode": out.addFormat("((char)%x).ToString()", args[0]);
					case "defaultValue": out.addFormat("default(%mtype)", expr.getType());
					default: printf(out, "%x(%xargs)", x, args);
				}
			};
			case SfCall({def:SfStaticField({realPath:"cs.Syntax"}, cf)}, args): {
				switch (cf.realName) {
					case "code": SicsSyntaxCode.print(out, expr, null, args);
					case "plainCode": {
						var code = SicsExprTools.getString(args[0]);
						if (code != null) {
							out.addString(code);
						} else expr.error("Expected a string argument for plainCode");
					}
					default: expr.error("Unknown cs.Syntax call");
				}
			};
			case SfCall({def:SfIdent("__cs__")}, args): SicsSyntaxCode.print(out, expr, null, args);
			//}
			case SfCall(x, args): printf(out, "%x(%xargs)", x, args);
			case SfTrace(d, args): {
				printf(out, 'System.Console.WriteLine($"%s:%d', d.fileName, d.lineNumber);
				for (x in args) {
					printf(out, " {%x}", x);
				}
				printf(out, '")');
			};
			case SfNew({realPath: "string"}, [], [s]): printf(out, "%x.Clone()", s);
			case SfNew({realPath: "cs.NativeArray"}, [t], [n]): printf(out, "new %mtype[%w]", t, n);
			case SfNew(cl, tp, args): {
				out.addString("new ");
				out.addTypePathAuto(cl, tp.length != 0);
				out.addOptTypeParams(tp);
				printf(out, "(%xargs)", args);
			};
			//}
			//{ blocks
			case SfBlock(exprs): {
				if (flags.isInline()) {
					expr.error("inline block!");
				} else if (flags.needsWrap()) {
					switch (exprs.length) {
						case 0: printf(out, "{`}");
						case 1: printf(out, "%sx;", exprs[0]);
						default: printf(out, "{%(+\n)%;%sw;%(-\n)}", expr);
					}
				} else {
					var sep = false;
					//printf(out, "%cany", exprs);
					for (x in exprs) {
						if (x.isEmpty()) continue;
						if (sep) out.addLine();
						var ol = out.length;
						printf(out, "%;%sw;", x);
						sep = out.length > ol;
					}
				}
			};
			case SfReturn(false, _): printf(out, "return");
			case SfReturn(true, x): printf(out, "return %sx", x);
			case SfIf(cond, then, hasElse, not): {
				if (flags.isInline()) {
					if (hasElse) {
						printf(out, "(%x`?`%x`:`%x)", cond.unpack(), then, not);
					} else expr.error("An inline single-branch if? That shouldn't happen");
				} else SicsPrintBranching.printIf(out, cond, then, not, !hasElse);
			};
			case SfSwitch(expr, cases, hasDefault, xdef): {
				SicsPrintBranching.printSwitch(out, expr, cases, xdef);
			}
			//}
			//{ loops
			case SfWhile(cond, loop, true): printf(out, "while`%x %sx", cond, loop);
			case SfCFor(init, cond, post, expr): {
				printf(out, "for`(%sx;`%w;`%sx)`%sx", init, cond, post, expr);
			}
			case SfContinue: out.addString("continue");
			case SfBreak: out.addString("break");
			//}
			//{
			case SfThrow(x): printf(out, "throw %x", x);
			//}
			default: printf(out, "tdg:%any", expr.def);
		}
	}
	
	function printType(t:SfType, dir:String) {
		var impl = new SfBuffer();
		impl.uses = new SfBufferUses();
		var init = new SfBuffer();
		t.printTo(impl, init);
		if (impl.length == 0) return;
		var bh = new SfBuffer();
		bh.addString("// Generated by Haxe w/ sillysharp");
		bh.addLine();
		bh.addString("// " + Date.now().toString());
		bh.addLine();
		bh.addLine();
		
		var l = init.length;
		impl.uses.printTo(init);
		if (init.length > l) init.addLine();
		
		bh.addBuffer(init);
		bh.addBuffer(impl);
		
		for (pk in t.pack) {
			dir += "/" + pk;
			if (!FileSystem.exists(dir)) FileSystem.createDirectory(dir);
		}
		File.saveContent(dir + "/" + t.name + ".cs", bh.toString());
	}
	override public function printTo(path:String):Void {
		(new SiCsPascalCase()).apply();
		if (!FileSystem.exists(path)) FileSystem.createDirectory(path);
		for (t in typeList) printType(t, path);
	}
	
	public static function main() {
		SfConfig.init();
	}
}