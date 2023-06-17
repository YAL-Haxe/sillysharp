package cs.system;

@:nativeGen @:struct @:abstract @:libType @:csNative @:native("System.Enum") extern class Enum extends ValueType implements IComparable implements IConvertible implements IFormattable {
	@:protected private function new() : Void;
	function CompareTo(target : Dynamic) : Int;
	function GetTypeCode() : TypeCode;
	function HasFlag(flag : Enum) : Bool;
	@:overload(function() : String {})
	@:overload(function(format : String, provider : IFormatProvider) : String {})
	@:overload(function(format : String) : String {})
	function ToString(provider : IFormatProvider) : String;
	static function Format(enumType : Type, value : Dynamic, format : String) : String;
	static function GetName(enumType : Type, value : Dynamic) : String;
	static function GetNames(enumType : Type) : cs.NativeArray<String>;
	static function GetUnderlyingType(enumType : Type) : Type;
	static function GetValues(enumType : Type) : Array;
	static function IsDefined(enumType : Type, value : Dynamic) : Bool;
	@:overload(function(enumType : Type, value : String) : Dynamic {})
	static function Parse(enumType : Type, value : String, ignoreCase : Bool) : Dynamic;
	@:overload(function(enumType : Type, value : cs.types.UInt8) : Dynamic {})
	@:overload(function(enumType : Type, value : cs.types.UInt64) : Dynamic {})
	@:overload(function(enumType : Type, value : UInt) : Dynamic {})
	@:overload(function(enumType : Type, value : cs.types.UInt16) : Dynamic {})
	@:overload(function(enumType : Type, value : cs.types.Int8) : Dynamic {})
	@:overload(function(enumType : Type, value : Dynamic) : Dynamic {})
	@:overload(function(enumType : Type, value : haxe.Int64) : Dynamic {})
	@:overload(function(enumType : Type, value : Int) : Dynamic {})
	static function ToObject(enumType : Type, value : cs.types.Int16) : Dynamic;
	@:overload(function<M0>(value : String, result : cs.Out<M0>) : Bool {})
	static function TryParse<M0>(value : String, ignoreCase : Bool, result : cs.Out<M0>) : Bool;
}
