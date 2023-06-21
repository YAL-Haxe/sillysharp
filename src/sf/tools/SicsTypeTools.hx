package sf.tools;
import haxe.macro.TypeTools;
import sf.type.expr.SfExpr;
import haxe.macro.Type;
using sf.type.expr.SfExprTools;

/**
 * ...
 * @author YellowAfterlife
 */
class SicsTypeTools {
	public static function isCsValueType(t:Type):Bool {
		t = TypeTools.followWithAbstracts(t);
		switch (t) {
			case TAbstract(_.get() => at, _): {
				switch (at.module) {
					case "StdTypes":
						return switch (at.name) {
							case "Int", "Float", "Bool": true;
							default: false;
						}
					case "cs.StdTypes":
						return switch (at.name) {
							case "Int8", "UInt8", "Int16", "UInt16", "Int64", "UInt64": true;
							default: false;
						}
					default: return false;
				}
			};
			default: return false;
		}
	}
	public static function isHaxeInt(t:Type):Bool {
		t = TypeTools.followWithAbstracts(t);
		return switch (t) {
			case TAbstract(_.get() => at = {module:"StdTypes", name:"Int"}, _): true;
			default: false;
		}
	}
	public static function isFloat(t:Type):Bool {
		t = TypeTools.followWithAbstracts(t);
		return switch (t) {
			case TAbstract(_.get() => at = {module:"StdTypes", name:"Float"}, _): true;
			case TAbstract(_.get() => at = {module:"StdTypes", name:"Single"}, _): true;
			default: false;
		}
	}
	public static function isDynamic(t:Type):Bool {
		t = TypeTools.followWithAbstracts(t);
		return switch (t) {
			case TDynamic(_): true;
			default: false;
		}
	}
}