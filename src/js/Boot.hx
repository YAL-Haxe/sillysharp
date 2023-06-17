package js;
import cs.Lib;

/**
 * ...
 * @author YellowAfterlife
 */
class Boot {
	private static function __string_rec(o:Dynamic, s:String):String {
		return Std.string(o);
	}
	private static function getClass<T>(o:T):Class<T> {
		Lib.error("todo");
		return null;
	}
	static function isClass(q:Dynamic):Bool {
		return false;
	}
	static function isEnum(q:Dynamic):Bool {
		return false;
	}
}