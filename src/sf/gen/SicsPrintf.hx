package sf.gen;
import sf.SfGenerator;
import sf.type.SfBuffer;
import sf.type.SfPrintFlags;
import sf.type.expr.SfExpr;
using sf.type.expr.SfExprTools;

/**
 * ...
 * @author YellowAfterlife
 */
class SicsPrintf {
	public var map:Map<String, SicsPrintf_fn> = new Map();
	public function new() {
		map["mtype"] = function(out:SfBuffer, val:Any) {
			out.addMacroTypeName(val);
			return true;
		};
		map["any"] = function(out:SfBuffer, val:Any) {
			out.add(val);
			return true;
		};
		map["cany"] = function(out:SfBuffer, val:Any) {
			out.addString("/* ");
			out.add(val);
			out.addString(" */");
			return true;
		};
		map["xargs"] = function(out:SfBuffer, val:Any) {
			var args:Array<SfExpr> = val;
			for (i => arg in args) {
				if (i > 0) out.addComma();
				out.addExpr(arg, SfPrintFlags.ExprWrap);
			}
			return true;
		};
		map["sb"] = function(out:SfBuffer, val:Any) {
			out.addBlockExpr(val);
			return true;
		};
		map["op0"] = function(out:SfBuffer, val:Any) {
			if ((val:SfPrintFlags).needsWrap()) out.addParOpen();
			return true;
		};
		map["op1"] = function(out:SfBuffer, val:Any) {
			if ((val:SfPrintFlags).needsWrap()) out.addParClose();
			return true;
		};
	}
	public inline function printf(out:SfBuffer, fmt:String, val:Any):Bool {
		var fn:SicsPrintf_fn = map[fmt];
		return fn != null ? fn(out, val) : null;
	}
}
typedef SicsPrintf_fn = (out:SfBuffer, val:Any)->Bool;
