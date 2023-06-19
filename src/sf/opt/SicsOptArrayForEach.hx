package sf.opt;
import haxe.macro.Context;
import sf.opt.SfOptImpl;
import haxe.macro.Expr.Binop.*;
import haxe.macro.Expr.Unop.*;
import sf.type.expr.SfExpr;
import sf.type.expr.SfExprDef.*;
using sf.type.expr.SfExprTools;

/**
 * ...
 * @author YellowAfterlife
 */
class SicsOptArrayForEach extends SfOptImpl{
	override public function apply():Void {
		forEachExpr(function(e:SfExpr, st, fn) {
			e.iter(st, fn);
			switch (e.def) {
				case SfBlock([
					_.def => SfVarDecl(vArr, true, xArr),
					_.def => SfVarDecl(vInd, true, _.def => SfConst(TInt(0))),
					_.def => SfWhile(
						_.unpack().def => SfBinop(OpLt,
							_.def => SfLocal(vInd2),
							_.def => SfInstField(_.def => SfLocal(vArr2), _),
						),
						loopx = _.def => SfBlock(loop),
						true
					)
				]) if (vArr.equals(vArr2) && vInd.equals(vInd2)): {
					var first = loop[0];
					if (first == null) return;
					var vItem = switch (first.def) {
						case SfVarDecl(v, true,
							_.def => SfArrayAccess(
								_.def => SfLocal(vArr3),
								_.def => SfUnop(OpIncrement, true, _.def => SfLocal(vInd3))
							)
						) if (
							vArr3.equals(vArr) && vInd3.equals(vInd)
						): v;
						default: return;
					}
					e.def = SfForEach(vItem, xArr, loopx.mod(SfBlock(loop.slice(1))));
				};
				default:
			}
		});
	}
}