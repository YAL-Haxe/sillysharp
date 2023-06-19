package cs.system.text;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Text.EncoderFallbackBuffer") extern class EncoderFallbackBuffer {
	var Remaining(get,never) : Int;
	@:protected private function new() : Void;
	@:overload(function(charUnknown : cs.types.Char16, index : Int) : Bool {})
	function Fallback(charUnknownHigh : cs.types.Char16, charUnknownLow : cs.types.Char16, index : Int) : Bool;
	function GetNextChar() : cs.types.Char16;
	function MovePrevious() : Bool;
	function Reset() : Void;
	function get_Remaining() : Int;
}
