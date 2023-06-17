package sics._std;

import cs.NativeString;
import cs.StdTypes;

/**
 * ...
 * @author YellowAfterlife
 */
@:coreApi @:native("string") @:pascalCase
extern class String implements ArrayAccess<Char16> {
	var length(default, null):Int;
	
	function new(s:String):Void;
	
	@:native("ToUpper") function toUpperCase():String;
	
	@:native("ToLower") function toLowerCase():String;
	
	inline function charAt(index:Int):String return StringHx.charAt(this, index);
	
	inline function charCodeAt(index:Int):Null<Int>;
	
	function indexOf(str:String, ?startIndex:Int):Int;
	
	function lastIndexOf(str:String, ?startIndex:Int):Int;
	
	function split(delimiter:String):Array<String>;
}

@:std class StringHx {
	public static function charAt(s:String, index:Int):String {
		if (index < 0 || index >= s.length) return "";
		return NativeString.ofString(index).substring(index, 1);
	}
	public static function charCodeAt(s:String, index:Int):Null<Int> {
		if (index < 0 || index >= s.length) return null;
		return s[index];
	}
}