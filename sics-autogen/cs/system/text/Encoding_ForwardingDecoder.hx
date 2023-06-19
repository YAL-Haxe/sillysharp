package cs.system.text;

@:nativeGen @:libType @:csNative @:native("System.Text.Encoding.ForwardingDecoder") extern final class Encoding_ForwardingDecoder extends Decoder {
	function new(enc : Encoding) : Void;
	function GetCharCount(bytes : cs.NativeArray<cs.types.UInt8>, index : Int, count : Int) : Int;
	function GetChars(bytes : cs.NativeArray<cs.types.UInt8>, byteIndex : Int, byteCount : Int, chars : cs.NativeArray<cs.types.Char16>, charIndex : Int) : Int;
}
