package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.Double") extern final class Double extends ValueType implements IComparable implements IFormattable implements IConvertible implements IComparable_1<Float> implements IEquatable_1<Float> {
	@:overload(function(value : Dynamic) : Int {})
	function CompareTo(value : Float) : Int;
	function GetTypeCode() : TypeCode;
	@:overload(function() : String {})
	@:overload(function(format : String, provider : IFormatProvider) : String {})
	@:overload(function(format : String) : String {})
	function ToString(provider : IFormatProvider) : String;
	@:readOnly static var Epsilon(default,never) : Float;
	@:readOnly static var MaxValue(default,never) : Float;
	@:readOnly static var MinValue(default,never) : Float;
	@:readOnly static var NaN(default,never) : Float;
	@:readOnly static var NegativeInfinity(default,never) : Float;
	@:readOnly static var PositiveInfinity(default,never) : Float;
	static function IsInfinity(d : Float) : Bool;
	static function IsNaN(d : Float) : Bool;
	static function IsNegativeInfinity(d : Float) : Bool;
	static function IsPositiveInfinity(d : Float) : Bool;
	@:overload(function(s : String) : Float {})
	@:overload(function(s : String, style : cs.system.globalization.NumberStyles, provider : IFormatProvider) : Float {})
	@:overload(function(s : String, style : cs.system.globalization.NumberStyles) : Float {})
	static function Parse(s : String, provider : IFormatProvider) : Float;
	@:overload(function(s : String, style : cs.system.globalization.NumberStyles, provider : IFormatProvider, result : cs.Out<Float>) : Bool {})
	static function TryParse(s : String, result : cs.Out<Float>) : Bool;
	static function op_Equality(left : Float, right : Float) : Bool;
	static function op_GreaterThan(left : Float, right : Float) : Bool;
	static function op_GreaterThanOrEqual(left : Float, right : Float) : Bool;
	static function op_Inequality(left : Float, right : Float) : Bool;
	static function op_LessThan(left : Float, right : Float) : Bool;
	static function op_LessThanOrEqual(left : Float, right : Float) : Bool;
}
