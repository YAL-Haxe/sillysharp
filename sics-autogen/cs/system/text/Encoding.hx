package cs.system.text;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Text.Encoding") extern class Encoding implements cs.system.ICloneable {
	var BodyName(get,never) : String;
	var CodePage(get,never) : Int;
	var DecoderFallback(get,set) : DecoderFallback;
	var EncoderFallback(get,set) : EncoderFallback;
	var EncodingName(get,never) : String;
	var HeaderName(get,never) : String;
	var IsBrowserDisplay(get,never) : Bool;
	var IsBrowserSave(get,never) : Bool;
	var IsMailNewsDisplay(get,never) : Bool;
	var IsMailNewsSave(get,never) : Bool;
	var IsReadOnly(get,never) : Bool;
	var IsSingleByte(get,never) : Bool;
	var WebName(get,never) : String;
	var WindowsCodePage(get,never) : Int;
	@:overload(function() : Void {})
	@:protected private function new(codePage : Int) : Void;
	function Clone() : Dynamic;
	@:overload(function(chars : cs.NativeArray<cs.types.Char16>, index : Int, count : Int) : Int {})
	@:overload(function(chars : cs.NativeArray<cs.types.Char16>) : Int {})
	function GetByteCount(s : String) : Int;
	@:overload(function(chars : cs.NativeArray<cs.types.Char16>, charIndex : Int, charCount : Int, bytes : cs.NativeArray<cs.types.UInt8>, byteIndex : Int) : Int {})
	@:overload(function(chars : cs.NativeArray<cs.types.Char16>) : cs.NativeArray<cs.types.UInt8> {})
	@:overload(function(chars : cs.NativeArray<cs.types.Char16>, index : Int, count : Int) : cs.NativeArray<cs.types.UInt8> {})
	@:overload(function(s : String) : cs.NativeArray<cs.types.UInt8> {})
	function GetBytes(s : String, charIndex : Int, charCount : Int, bytes : cs.NativeArray<cs.types.UInt8>, byteIndex : Int) : Int;
	@:overload(function(bytes : cs.NativeArray<cs.types.UInt8>, index : Int, count : Int) : Int {})
	function GetCharCount(bytes : cs.NativeArray<cs.types.UInt8>) : Int;
	@:overload(function(bytes : cs.NativeArray<cs.types.UInt8>, byteIndex : Int, byteCount : Int, chars : cs.NativeArray<cs.types.Char16>, charIndex : Int) : Int {})
	@:overload(function(bytes : cs.NativeArray<cs.types.UInt8>) : cs.NativeArray<cs.types.Char16> {})
	function GetChars(bytes : cs.NativeArray<cs.types.UInt8>, index : Int, count : Int) : cs.NativeArray<cs.types.Char16>;
	function GetDecoder() : Decoder;
	function GetEncoder() : Encoder;
	function GetMaxByteCount(charCount : Int) : Int;
	function GetMaxCharCount(byteCount : Int) : Int;
	function GetPreamble() : cs.NativeArray<cs.types.UInt8>;
	@:overload(function(bytes : cs.NativeArray<cs.types.UInt8>, index : Int, count : Int) : String {})
	function GetString(bytes : cs.NativeArray<cs.types.UInt8>) : String;
	@:overload(function() : Bool {})
	function IsAlwaysNormalized(form : NormalizationForm) : Bool;
	function get_BodyName() : String;
	function get_CodePage() : Int;
	function get_DecoderFallback() : DecoderFallback;
	function get_EncoderFallback() : EncoderFallback;
	function get_EncodingName() : String;
	function get_HeaderName() : String;
	function get_IsBrowserDisplay() : Bool;
	function get_IsBrowserSave() : Bool;
	function get_IsMailNewsDisplay() : Bool;
	function get_IsMailNewsSave() : Bool;
	function get_IsReadOnly() : Bool;
	function get_IsSingleByte() : Bool;
	function get_WebName() : String;
	function get_WindowsCodePage() : Int;
	function set_DecoderFallback(value : DecoderFallback) : DecoderFallback;
	function set_EncoderFallback(value : EncoderFallback) : EncoderFallback;
	static var ASCII(get,never) : Encoding;
	static var BigEndianUnicode(get,never) : Encoding;
	static var Default(get,never) : Encoding;
	static var UTF32(get,never) : Encoding;
	static var UTF7(get,never) : Encoding;
	static var UTF8(get,never) : Encoding;
	static var Unicode(get,never) : Encoding;
	@:overload(function(srcEncoding : Encoding, dstEncoding : Encoding, bytes : cs.NativeArray<cs.types.UInt8>) : cs.NativeArray<cs.types.UInt8> {})
	static function Convert(srcEncoding : Encoding, dstEncoding : Encoding, bytes : cs.NativeArray<cs.types.UInt8>, index : Int, count : Int) : cs.NativeArray<cs.types.UInt8>;
	@:overload(function(codepage : Int) : Encoding {})
	@:overload(function(name : String) : Encoding {})
	@:overload(function(name : String, encoderFallback : EncoderFallback, decoderFallback : DecoderFallback) : Encoding {})
	static function GetEncoding(codepage : Int, encoderFallback : EncoderFallback, decoderFallback : DecoderFallback) : Encoding;
	static function GetEncodings() : cs.NativeArray<EncodingInfo>;
	static function get_ASCII() : Encoding;
	static function get_BigEndianUnicode() : Encoding;
	static function get_Default() : Encoding;
	static function get_UTF32() : Encoding;
	static function get_UTF7() : Encoding;
	static function get_UTF8() : Encoding;
	static function get_Unicode() : Encoding;
}
