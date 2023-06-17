package;
import cs.NativeString;

/**
 * ...
 * @author YellowAfterlife
 */
@:std class StringTools {
	public static inline function fastCodeAt(s:String, index:Int):Int {
		return (cast(index, UInt) < s.length) ? NativeString.ofString(s)[index] : -1;
	}
	public static inline function unsafeCodeAt(s:String, index:Int):Int {
		return NativeString.ofString(s)[index];
	}
	public static inline function trim(s:String):String {
		return NativeString.ofString(s).trim();
	}
	public static inline function ltrim(s:String):String {
		return NativeString.ofString(s).trimStart();
	}
	public static inline function rtrim(s:String):String {
		return NativeString.ofString(s).trimEnd();
	}
	public static inline function replace(s:String, what:String, with:String):String {
		return NativeString.ofString(s).replace(what, with);
	}
	public static function lpad(s:String, c:String, len:Int) {
		return NativeString.ofString(s).padLeft(len, unsafeCodeAt(c, 0));
	}
	public static function rpad(s:String, c:String, len:Int) {
		return NativeString.ofString(s).padRight(len, unsafeCodeAt(c, 0));
	}
}