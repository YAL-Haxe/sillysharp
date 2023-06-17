package cs;
import cs.NativeArray;
import haxe.Rest;

/**
 * ...
 * @author YellowAfterlife
 */
@:native("string") @:pascalCase
extern class NativeString implements ArrayAccess<Int> {
	static inline function ofString(s:String):NativeString {
		return cast s;
	}
	static inline function toString(val:Any):String {
		return Syntax.code("({0}).ToString()", val);
	}
	static function format(fmt:String, values:Rest<Any>):String;
	
	function trim():String;
	function trimEnd():String;
	function trimStart():String;
	function replace(what:String, with:String):String;
	function padLeft(len:Int, ?ch:Int):String;
	function padRight(len:Int, ?ch:Int):String;
	function substring(start:Int, ?len:Int):String;
	function indexOf(str:String, ?startIndex:Int):String;
	function lastIndexOf(str:String, ?startIndex:Int):String;
	function split(sep:String):NativeArray<String>;
}
