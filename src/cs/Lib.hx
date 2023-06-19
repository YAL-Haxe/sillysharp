package cs;

/**
 * ...
 * @author YellowAfterlife
 */
extern class Lib {
	public static inline function error(msg:String):Void {
		Syntax.code('throw new System.Exception({0})', msg);
	}
	
	public static function as<T>(obj:Dynamic, cl:Class<T>):T;
	public static function defaultValue<T>(?cl:Class<T>):T;
	public static function fromCharCode(c:Int):String;
}