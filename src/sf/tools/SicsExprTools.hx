package sf.tools;
import sf.type.expr.SfExpr;
import sf.type.expr.SfExprDef;
using sf.type.expr.SfExprTools;

/**
 * ...
 * @author YellowAfterlife
 */
class SicsExprTools {
	public static function getString(x:SfExpr):String {
		if (x == null) return null;
		return switch (x.unpack().def) {
			case SfExprDef.SfConst(TString(s)): s;
			default: null;
		}
	}
}