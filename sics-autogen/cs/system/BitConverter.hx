package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.BitConverter") extern final class BitConverter {
	@:readOnly static var IsLittleEndian(default,never) : Bool;
	static function DoubleToInt64Bits(value : Float) : haxe.Int64;
	@:overload(function(value : Bool) : cs.NativeArray<cs.types.UInt8> {})
	@:overload(function(value : Float) : cs.NativeArray<cs.types.UInt8> {})
	@:overload(function(value : Single) : cs.NativeArray<cs.types.UInt8> {})
	@:overload(function(value : cs.types.UInt64) : cs.NativeArray<cs.types.UInt8> {})
	@:overload(function(value : UInt) : cs.NativeArray<cs.types.UInt8> {})
	@:overload(function(value : cs.types.UInt16) : cs.NativeArray<cs.types.UInt8> {})
	@:overload(function(value : haxe.Int64) : cs.NativeArray<cs.types.UInt8> {})
	@:overload(function(value : Int) : cs.NativeArray<cs.types.UInt8> {})
	@:overload(function(value : cs.types.Int16) : cs.NativeArray<cs.types.UInt8> {})
	static function GetBytes(value : cs.types.Char16) : cs.NativeArray<cs.types.UInt8>;
	static function Int64BitsToDouble(value : haxe.Int64) : Float;
	static function ToBoolean(value : cs.NativeArray<cs.types.UInt8>, startIndex : Int) : Bool;
	static function ToChar(value : cs.NativeArray<cs.types.UInt8>, startIndex : Int) : cs.types.Char16;
	static function ToDouble(value : cs.NativeArray<cs.types.UInt8>, startIndex : Int) : Float;
	static function ToInt16(value : cs.NativeArray<cs.types.UInt8>, startIndex : Int) : cs.types.Int16;
	static function ToInt32(value : cs.NativeArray<cs.types.UInt8>, startIndex : Int) : Int;
	static function ToInt64(value : cs.NativeArray<cs.types.UInt8>, startIndex : Int) : haxe.Int64;
	static function ToSingle(value : cs.NativeArray<cs.types.UInt8>, startIndex : Int) : Single;
	@:native("ToString") static function _ToString(value : cs.NativeArray<cs.types.UInt8>) : String;
	@:overload(function(value : cs.NativeArray<cs.types.UInt8>, startIndex : Int, length : Int) : String {})
	@:overload(function(value : cs.NativeArray<cs.types.UInt8>, startIndex : Int) : String {})
	@:overload(function(value : cs.NativeArray<cs.types.UInt8>) : String {})
	@:overload(function(value : cs.NativeArray<cs.types.UInt8>, startIndex : Int, length : Int) : String {})
	static function ToString(value : cs.NativeArray<cs.types.UInt8>, startIndex : Int) : String;
	static function ToUInt16(value : cs.NativeArray<cs.types.UInt8>, startIndex : Int) : cs.types.UInt16;
	static function ToUInt32(value : cs.NativeArray<cs.types.UInt8>, startIndex : Int) : UInt;
	static function ToUInt64(value : cs.NativeArray<cs.types.UInt8>, startIndex : Int) : cs.types.UInt64;
}
