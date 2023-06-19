package sf.opt;
import sf.opt.SfOptCFor;
import sf.opt.SfOptImpl;
import sf.type.expr.SfExprDef.*;
import sf.type.*;
import sf.type.expr.*;
using sf.type.expr.SfExprTools;

/**
 * ...
 * @author YellowAfterlife
 */
class SicsOptCFor extends SfOptCFor {
	override public function isValidLoop(init:SfExpr, cond:SfExpr, loop:SfExpr, post:SfExpr):Bool {
		return switch (loop.def) {
			case SfBlock([
				_.def => SfVarDecl(_, _, _),
				_
			]): false;
			default: true;
		}
	}
	override public function canMergePreInit() {
		return true;
	}
	static function isInt(v:SfVar) {
		return switch (v.type) {
			case TAbstract(_.get() => { module: "StdTypes", name: "Int" }, []): true;
			default: false;
		}
	}
	override public function mergePreInit(preInit:SfExpr, init:SfExpr, cond:SfExpr, loop:SfExpr, post:SfExpr) {
		var initVar:SfVar, initExpr:SfExpr;
		switch (preInit.def) {
			case SfVarDecl(v, true, x) if (isInt(v)): //v1 = v; x1 = x;
			default: return;
		}
		switch (init.def) {
			case SfVarDecl(v, true, x) if (isInt(v)): {
				initVar = v;
				initExpr = x;
			};
			default: return;
		}
		init.def = SfDynamic("{b0}, {2} = {3}", [
			preInit.clone(),
			init.clone(),
			init.mod(SfLocal(initVar)),
			initExpr,
		]);
		preInit.def = SfBlock([]);
	}
}