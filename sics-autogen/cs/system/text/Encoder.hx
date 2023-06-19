package cs.system.text;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Text.Encoder") extern class Encoder {
	var Fallback(get,set) : EncoderFallback;
	var FallbackBuffer(get,never) : EncoderFallbackBuffer;
	@:protected private function new() : Void;
	function Convert(chars : cs.NativeArray<cs.types.Char16>, charIndex : Int, charCount : Int, bytes : cs.NativeArray<cs.types.UInt8>, byteIndex : Int, byteCount : Int, flush : Bool, charsUsed : cs.Out<Int>, bytesUsed : cs.Out<Int>, completed : cs.Out<Bool>) : Void;
	function GetByteCount(chars : cs.NativeArray<cs.types.Char16>, index : Int, count : Int, flush : Bool) : Int;
	function GetBytes(chars : cs.NativeArray<cs.types.Char16>, charIndex : Int, charCount : Int, bytes : cs.NativeArray<cs.types.UInt8>, byteIndex : Int, flush : Bool) : Int;
	function Reset() : Void;
	function get_Fallback() : EncoderFallback;
	function get_FallbackBuffer() : EncoderFallbackBuffer;
	function set_Fallback(value : EncoderFallback) : EncoderFallback;
}
