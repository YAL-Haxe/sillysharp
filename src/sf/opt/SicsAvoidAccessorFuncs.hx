package sf.opt;
import sf.opt.SfOptImpl;
import sf.SfCore.*;
import sf.type.SfClass;
import sf.type.SfStruct;
import sf.type.SfType;
import sf.type.expr.SfExprCase;
import sf.type.expr.SfExpr;
import haxe.macro.Expr.Binop.*;
using sf.type.expr.SfExprTools;
import sf.type.expr.SfExprDef.*;

/**
 * Haxe uses
 * @author YellowAfterlife
 */
class SicsAvoidAccessorFuncs extends SfOptImpl {
	override public function apply():Void {
		forEachExpr(function(e:SfExpr, st, fn) {
			e.iter(st, fn);
			switch (e.def) {
				
				// Class.get_Count() -> Class.Count
				case SfCall({def:SfStaticField(c, cf)}, []) if (
					cf.isGetterOf != null && c.isCsNative
				): {
					e.def = SfStaticField(c, cf.isGetterOf);
				};
				
				// Class.set_Count(n) -> Class.Count = n
				case SfCall({def:SfStaticField(c, cf)}, [v]) if (
					cf.isSetterOf != null && c.isCsNative
				): {
					e.def = SfBinop(OpAssign, e.mod(SfStaticField(c, cf.isSetterOf)), v);
				};
				
				// inst.get_Count -> inst.Count
				case SfCall({def:SfInstField(x, cf)}, []) if (
					cf.isGetterOf != null && cf.parentClass.isCsNative
				): {
					e.def = SfInstField(x, cf.isGetterOf);
				};
				
				// inst.set_Count(n) -> inst.Count = n
				case SfCall({def:SfInstField(x, cf)}, [v]) if (
					cf.isSetterOf != null && cf.parentClass.isCsNative
				): {
					e.def = SfBinop(OpAssign, e.mod(SfInstField(x, cf.isSetterOf)), v);
				};
				
				// inst.get_Item(k) -> inst[k]
				case SfCall({def:SfInstField(x, cf = {name:"get_Item"})}, [i]) if (cf.parentClass.isCsNative): {
					e.def = SfArrayAccess(x, i);
				};
				
				// inst.set_Item(k, v) -> inst[k] = v
				case SfCall({def:SfInstField(x, cf = {name:"set_Item"})}, [i, v]) if (cf.parentClass.isCsNative): {
					e.def = SfBinop(OpAssign, e.mod(SfArrayAccess(x, i)), v);
				};
				
				case SfIf(
					_.unpack() => {def:SfBinop(OpEq, x1, {def:SfConst(TNull)})}, // x1 == null
					{def:SfConst(TString("null"))},
					true,
					x2
				) if (x1.equals(x2)): {
					e.def = x2.def;
				};
				
				default:
			}
		});
	}
}