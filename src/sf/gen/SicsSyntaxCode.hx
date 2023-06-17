package sf.gen;
import sf.tools.SicsExprTools;
import sf.type.SfBuffer;
import sf.type.expr.SfExpr;
using sf.type.expr.SfExprTools;
import sf.type.SfPrintFlags;
using StringTools;

/**
 * ...
 * @author YellowAfterlife
 */
class SicsSyntaxCode {
	/**
	 * Returns whether the expression starting at <pos> in <gml> looks inline
	 * (as opposed to being a statement)
	 */
	public static function isInline(gml:String, pos:Int, def:Bool = true):Bool {
		while (--pos >= 0) {
			var c = gml.fastCodeAt(pos);
			switch (c) {
				case " ".code, "\t".code, "\r".code, "\n".code: {};
				case ")".code, "{".code, "}".code: return false;
				case "(".code: {
					while (--pos >= 0) {
						c = gml.fastCodeAt(pos);
						switch (c) {
							case " ".code, "\t".code, "\r".code, "\n".code: {};
							default: {
								return !(pos >= 2 && c == "r".code
									&& gml.fastCodeAt(pos - 1) == "o".code
									&& gml.fastCodeAt(pos - 2) == "f".code
								);
							};
						}
					}
				};
				case"+".code, "-".code, "*".code, "/".code, "%".code,
					"<".code, ">".code, "&".code, "|".code, "^".code,
				"=".code: return true;
				default: return def;
			}
		}
		return def;
	}
	
	public static function print(r:SfBuffer, expr:SfExpr, _code:String, _args:Array<SfExpr>) {
		if (_code == null) {
			_code = SicsExprTools.getString(_args.shift());
			if (_code == null) {
				expr.error("Expected a format argument");
				return;
			}
		}
		if (_args.length >= 10) {
			expr.error("Too many arguments");
			return;
		}
		var start = 0;
		var cubAt = _code.indexOf("{");
		while (cubAt >= 0) {
			var i = cubAt;
			var k = _code.fastCodeAt(++i);
			var flags:SfPrintFlags = -1;
			if (k == "x".code) {
				flags = SfPrintFlags.ExprWrap;
				k = _code.fastCodeAt(++i);
			} else if (k == "s".code) {
				flags = SfPrintFlags.Stat;
				k = _code.fastCodeAt(++i);
			} else if (k == "b".code) {
				flags = SfPrintFlags.StatWrap;
				k = _code.fastCodeAt(++i);
			} 
			if (k >= "0".code && k <= "9".code && _code.fastCodeAt(++i) == "}".code) {
				if (flags == -1) flags = isInline(_code, cubAt)
					? SfPrintFlags.ExprWrap : SfPrintFlags.Stat;
				r.addSub(_code, start, cubAt - start);
				r.addExpr(_args[k - "0".code], flags);
				start = ++i;
			}
			cubAt = _code.indexOf("{", i);
		}
		r.addSub(_code, start);
	}
}