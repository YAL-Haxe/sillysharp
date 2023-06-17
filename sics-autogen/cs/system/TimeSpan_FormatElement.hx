package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.TimeSpan.FormatElement") extern final class TimeSpan_FormatElement extends ValueType {
	var CharValue : cs.types.Char16;
	var IntValue : Int;
	var StringValue : String;
	var Type : TimeSpan_FormatElementType;
	function new(type : TimeSpan_FormatElementType) : Void;
}
