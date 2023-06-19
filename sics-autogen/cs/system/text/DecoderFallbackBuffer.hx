package cs.system.text;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Text.DecoderFallbackBuffer") extern class DecoderFallbackBuffer {
	var Remaining(get,never) : Int;
	@:protected private function new() : Void;
	function Fallback(bytesUnknown : cs.NativeArray<cs.types.UInt8>, index : Int) : Bool;
	function GetNextChar() : cs.types.Char16;
	function MovePrevious() : Bool;
	function Reset() : Void;
	function get_Remaining() : Int;
}
