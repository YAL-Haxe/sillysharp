package cs.system.text;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Text.Decoder") extern class Decoder {
	var Fallback(get,set) : DecoderFallback;
	var FallbackBuffer(get,never) : DecoderFallbackBuffer;
	@:protected private function new() : Void;
	function Convert(bytes : cs.NativeArray<cs.types.UInt8>, byteIndex : Int, byteCount : Int, chars : cs.NativeArray<cs.types.Char16>, charIndex : Int, charCount : Int, flush : Bool, bytesUsed : cs.Out<Int>, charsUsed : cs.Out<Int>, completed : cs.Out<Bool>) : Void;
	@:overload(function(bytes : cs.NativeArray<cs.types.UInt8>, index : Int, count : Int) : Int {})
	function GetCharCount(bytes : cs.NativeArray<cs.types.UInt8>, index : Int, count : Int, flush : Bool) : Int;
	@:overload(function(bytes : cs.NativeArray<cs.types.UInt8>, byteIndex : Int, byteCount : Int, chars : cs.NativeArray<cs.types.Char16>, charIndex : Int) : Int {})
	function GetChars(bytes : cs.NativeArray<cs.types.UInt8>, byteIndex : Int, byteCount : Int, chars : cs.NativeArray<cs.types.Char16>, charIndex : Int, flush : Bool) : Int;
	function Reset() : Void;
	function get_Fallback() : DecoderFallback;
	function get_FallbackBuffer() : DecoderFallbackBuffer;
	function set_Fallback(value : DecoderFallback) : DecoderFallback;
}
