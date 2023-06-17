package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.Decimal") extern final class Decimal extends ValueType implements IFormattable implements IConvertible implements IComparable implements IComparable_1<Decimal> implements IEquatable_1<Decimal> implements cs.system.runtime.serialization.IDeserializationCallback {
	@:overload(function(lo : Int, mid : Int, hi : Int, isNegative : Bool, scale : cs.types.UInt8) : Void {})
	@:overload(function(bits : cs.NativeArray<Int>) : Void {})
	@:overload(function(value : Float) : Void {})
	@:overload(function(value : Single) : Void {})
	@:overload(function(value : cs.types.UInt64) : Void {})
	@:overload(function(value : haxe.Int64) : Void {})
	@:overload(function(value : UInt) : Void {})
	function new(value : Int) : Void;
	@:overload(function(value : Dynamic) : Int {})
	function CompareTo(value : Decimal) : Int;
	function GetTypeCode() : TypeCode;
	@:overload(function(format : String, provider : IFormatProvider) : String {})
	@:overload(function(provider : IFormatProvider) : String {})
	@:overload(function(format : String) : String {})
	function ToString() : String;
	@:readOnly static var MaxValue(default,never) : Decimal;
	@:readOnly static var MinValue(default,never) : Decimal;
	@:readOnly static var MinusOne(default,never) : Decimal;
	@:readOnly static var One(default,never) : Decimal;
	@:readOnly static var Zero(default,never) : Decimal;
	static function Add(d1 : Decimal, d2 : Decimal) : Decimal;
	static function Ceiling(d : Decimal) : Decimal;
	static function Compare(d1 : Decimal, d2 : Decimal) : Int;
	static function Divide(d1 : Decimal, d2 : Decimal) : Decimal;
	@:native("Equals") static function _Equals(d1 : Decimal, d2 : Decimal) : Bool;
	static function Floor(d : Decimal) : Decimal;
	static function FromOACurrency(cy : haxe.Int64) : Decimal;
	static function GetBits(d : Decimal) : cs.NativeArray<Int>;
	static function Multiply(d1 : Decimal, d2 : Decimal) : Decimal;
	static function Negate(d : Decimal) : Decimal;
	@:overload(function(s : String) : Decimal {})
	@:overload(function(s : String, style : cs.system.globalization.NumberStyles, provider : IFormatProvider) : Decimal {})
	@:overload(function(s : String, provider : IFormatProvider) : Decimal {})
	static function Parse(s : String, style : cs.system.globalization.NumberStyles) : Decimal;
	static function Remainder(d1 : Decimal, d2 : Decimal) : Decimal;
	@:overload(function(d : Decimal, decimals : Int) : Decimal {})
	@:overload(function(d : Decimal, mode : MidpointRounding) : Decimal {})
	@:overload(function(d : Decimal) : Decimal {})
	static function Round(d : Decimal, decimals : Int, mode : MidpointRounding) : Decimal;
	static function Subtract(d1 : Decimal, d2 : Decimal) : Decimal;
	@:noCompletion @:skipReflection static function ToByte(value : Decimal) : cs.types.UInt8;
	@:noCompletion @:skipReflection static function ToDouble(d : Decimal) : Float;
	@:noCompletion @:skipReflection static function ToInt16(value : Decimal) : cs.types.Int16;
	@:noCompletion @:skipReflection static function ToInt32(d : Decimal) : Int;
	@:noCompletion @:skipReflection static function ToInt64(d : Decimal) : haxe.Int64;
	static function ToOACurrency(value : Decimal) : haxe.Int64;
	@:noCompletion @:skipReflection static function ToSByte(value : Decimal) : cs.types.Int8;
	@:noCompletion @:skipReflection static function ToSingle(d : Decimal) : Single;
	@:noCompletion @:skipReflection static function ToUInt16(value : Decimal) : cs.types.UInt16;
	@:noCompletion @:skipReflection static function ToUInt32(d : Decimal) : UInt;
	@:noCompletion @:skipReflection static function ToUInt64(d : Decimal) : cs.types.UInt64;
	static function Truncate(d : Decimal) : Decimal;
	@:overload(function(s : String, result : cs.Out<Decimal>) : Bool {})
	static function TryParse(s : String, style : cs.system.globalization.NumberStyles, provider : IFormatProvider, result : cs.Out<Decimal>) : Bool;
	static function op_Addition(d1 : Decimal, d2 : Decimal) : Decimal;
	static function op_Decrement(d : Decimal) : Decimal;
	static function op_Division(d1 : Decimal, d2 : Decimal) : Decimal;
	static function op_Equality(d1 : Decimal, d2 : Decimal) : Bool;
	@:overload(function(value : Single) : Decimal {})
	@:overload(function(value : Decimal) : Float {})
	static function op_Explicit(value : Float) : Decimal;
	static function op_GreaterThan(d1 : Decimal, d2 : Decimal) : Bool;
	static function op_GreaterThanOrEqual(d1 : Decimal, d2 : Decimal) : Bool;
	@:overload(function(value : cs.types.UInt8) : Decimal {})
	@:overload(function(value : cs.types.UInt64) : Decimal {})
	@:overload(function(value : haxe.Int64) : Decimal {})
	@:overload(function(value : UInt) : Decimal {})
	@:overload(function(value : Int) : Decimal {})
	@:overload(function(value : cs.types.Char16) : Decimal {})
	@:overload(function(value : cs.types.UInt16) : Decimal {})
	@:overload(function(value : cs.types.Int16) : Decimal {})
	static function op_Implicit(value : cs.types.Int8) : Decimal;
	static function op_Increment(d : Decimal) : Decimal;
	static function op_Inequality(d1 : Decimal, d2 : Decimal) : Bool;
	static function op_LessThan(d1 : Decimal, d2 : Decimal) : Bool;
	static function op_LessThanOrEqual(d1 : Decimal, d2 : Decimal) : Bool;
	static function op_Modulus(d1 : Decimal, d2 : Decimal) : Decimal;
	static function op_Multiply(d1 : Decimal, d2 : Decimal) : Decimal;
	static function op_Subtraction(d1 : Decimal, d2 : Decimal) : Decimal;
	static function op_UnaryNegation(d : Decimal) : Decimal;
	static function op_UnaryPlus(d : Decimal) : Decimal;
}
