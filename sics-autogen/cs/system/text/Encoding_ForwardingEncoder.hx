package cs.system.text;

@:nativeGen @:libType @:csNative @:native("System.Text.Encoding.ForwardingEncoder") extern final class Encoding_ForwardingEncoder extends Encoder {
	function new(enc : Encoding) : Void;
	function GetByteCount(chars : cs.NativeArray<cs.types.Char16>, index : Int, count : Int, flush : Bool) : Int;
	function GetBytes(chars : cs.NativeArray<cs.types.Char16>, charIndex : Int, charCount : Int, bytes : cs.NativeArray<cs.types.UInt8>, byteCount : Int, flush : Bool) : Int;
}
