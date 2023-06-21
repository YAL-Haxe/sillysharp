package sf.opt;
import haxe.macro.Type;
import sf.opt.SfOptImpl;
import sf.tools.SicsExprTools;
import sf.tools.SicsTypeTools;
import sf.type.expr.SfExpr;
import haxe.macro.Expr.Binop.*;
using sf.type.expr.SfExprTools;
import sf.type.expr.SfExprDef.*;

/**
 * ...
 * @author YellowAfterlife
 */
class SicsOptNullable extends SfOptImpl {
	static function isTypeNullable(t:Type) {
		return switch (t) {
			case TAbstract(_.get() => {module:"StdTypes", name:"Null"}, [p]):
				SicsTypeTools.isCsValueType(p);
			default: false;
		}
	}
	static inline function isExprNullable(x:SfExpr) {
		return isTypeNullable(x.getType());
	}
	static function isExprNull(x:SfExpr) {
		return switch (x.unpack().def) {
			case SfConst(TNull): true;
			default: false;
		}
	}
	override public function apply():Void {
		forEachExpr(function(e:SfExpr, st, fn) {
			e.iter(st, fn);
			switch (e.def) {
				
				// `i = qi` -> `i = qi.Value`
				case SfBinop(
					OpAssign | OpAssignOp(_), a, b
				) if (
					!isExprNullable(a) && isExprNullable(b) && !isExprNull(b)
				): b.def = SfDynamic("{0}.Value", [b.clone()]);
				
				// `var i = qi` -> `var i = qi.Value`
				case SfVarDecl(v, true, x) if (
					!isTypeNullable(v.type) && isExprNullable(x) && !isExprNull(x)
				): x.def = SfDynamic("{0}.Value", [x.clone()]);
				
				// `a = (b != null ? b : c)` -> `a = b ?? c`
				case SfBinop(OpAssign | OpAssignOp(_), a, b = _.unpack().def => SfIf(
					c = _.unpack().def => SfBinop(o = OpNotEq, x1, _.def => SfConst(TNull)),
					x2,
					true,
					x3
				)) if (
					!isExprNullable(a) && isExprNullable(x2) && x1.equals(x2)
				): {
					b.def = SfDynamic("{0} ?? {1}", [x1, x3]);
					//c.def = SfDynamic("{0}.HasValue", [x1]);
					//x2.def = SfDynamic("{0}.Value", [x2.clone()]);
				};
				
				// `var a = (b != null ? b : c)` -> `var a = b ?? c`
				case SfVarDecl(v, true, x = _.unpack().def => SfIf(
					c = _.unpack().def => SfBinop(o = OpNotEq, x1, _.def => SfConst(TNull)),
					x2,
					true,
					x3
				)) if (
					!isTypeNullable(v.type) && isExprNullable(x2) && x1.equals(x2)
				): {
					x.def = SfDynamic("{0} ?? {1}", [x1, x3]);
					//c.def = SfDynamic("{0}.HasValue", [x1]);
					//x2.def = SfDynamic("{0}.Value", [x2.clone()]);
				}
				
				case SfIf(
					c = _.unpack().def => SfBinop(OpEq, x1, _.def => SfConst(TNull)),
					_.def => SfConst(TString("null")),
					true,
					_.def => SfBinop(OpAdd, _.def => SfConst(TString("")), x2)
				) if (x1.equals(x2)): {
					e.def = SfDynamic("{0}.ToString()", [x1]);
				};
				default:
			}
		});
	}
}