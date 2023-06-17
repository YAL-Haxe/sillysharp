package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.TimeSpan") extern final class TimeSpan extends ValueType implements IComparable implements IComparable_1<TimeSpan> implements IEquatable_1<TimeSpan> implements IFormattable {
	var Days(get,never) : Int;
	var Hours(get,never) : Int;
	var Milliseconds(get,never) : Int;
	var Minutes(get,never) : Int;
	var Seconds(get,never) : Int;
	var Ticks(get,never) : haxe.Int64;
	var TotalDays(get,never) : Float;
	var TotalHours(get,never) : Float;
	var TotalMilliseconds(get,never) : Float;
	var TotalMinutes(get,never) : Float;
	var TotalSeconds(get,never) : Float;
	@:overload(function(ticks : haxe.Int64) : Void {})
	@:overload(function(days : Int, hours : Int, minutes : Int, seconds : Int, milliseconds : Int) : Void {})
	@:overload(function(days : Int, hours : Int, minutes : Int, seconds : Int) : Void {})
	function new(hours : Int, minutes : Int, seconds : Int) : Void;
	function Add(ts : TimeSpan) : TimeSpan;
	@:overload(function(value : Dynamic) : Int {})
	function CompareTo(value : TimeSpan) : Int;
	function Duration() : TimeSpan;
	function Negate() : TimeSpan;
	function Subtract(ts : TimeSpan) : TimeSpan;
	@:overload(function() : String {})
	@:overload(function(format : String, formatProvider : IFormatProvider) : String {})
	function ToString(format : String) : String;
	function get_Days() : Int;
	function get_Hours() : Int;
	function get_Milliseconds() : Int;
	function get_Minutes() : Int;
	function get_Seconds() : Int;
	function get_Ticks() : haxe.Int64;
	function get_TotalDays() : Float;
	function get_TotalHours() : Float;
	function get_TotalMilliseconds() : Float;
	function get_TotalMinutes() : Float;
	function get_TotalSeconds() : Float;
	@:readOnly static var MaxValue(default,never) : TimeSpan;
	@:readOnly static var MinValue(default,never) : TimeSpan;
	@:readOnly static var TicksPerDay(default,never) : haxe.Int64;
	@:readOnly static var TicksPerHour(default,never) : haxe.Int64;
	@:readOnly static var TicksPerMillisecond(default,never) : haxe.Int64;
	@:readOnly static var TicksPerMinute(default,never) : haxe.Int64;
	@:readOnly static var TicksPerSecond(default,never) : haxe.Int64;
	@:readOnly static var Zero(default,never) : TimeSpan;
	static function Compare(t1 : TimeSpan, t2 : TimeSpan) : Int;
	@:native("Equals") static function _Equals(t1 : TimeSpan, t2 : TimeSpan) : Bool;
	static function FromDays(value : Float) : TimeSpan;
	static function FromHours(value : Float) : TimeSpan;
	static function FromMilliseconds(value : Float) : TimeSpan;
	static function FromMinutes(value : Float) : TimeSpan;
	static function FromSeconds(value : Float) : TimeSpan;
	static function FromTicks(value : haxe.Int64) : TimeSpan;
	@:overload(function(s : String) : TimeSpan {})
	static function Parse(input : String, formatProvider : IFormatProvider) : TimeSpan;
	@:overload(function(input : String, format : String, formatProvider : IFormatProvider) : TimeSpan {})
	@:overload(function(input : String, formats : cs.NativeArray<String>, formatProvider : IFormatProvider, styles : cs.system.globalization.TimeSpanStyles) : TimeSpan {})
	@:overload(function(input : String, formats : cs.NativeArray<String>, formatProvider : IFormatProvider) : TimeSpan {})
	static function ParseExact(input : String, format : String, formatProvider : IFormatProvider, styles : cs.system.globalization.TimeSpanStyles) : TimeSpan;
	@:overload(function(s : String, result : cs.Out<TimeSpan>) : Bool {})
	static function TryParse(input : String, formatProvider : IFormatProvider, result : cs.Out<TimeSpan>) : Bool;
	@:overload(function(input : String, format : String, formatProvider : IFormatProvider, result : cs.Out<TimeSpan>) : Bool {})
	@:overload(function(input : String, formats : cs.NativeArray<String>, formatProvider : IFormatProvider, styles : cs.system.globalization.TimeSpanStyles, result : cs.Out<TimeSpan>) : Bool {})
	@:overload(function(input : String, formats : cs.NativeArray<String>, formatProvider : IFormatProvider, result : cs.Out<TimeSpan>) : Bool {})
	static function TryParseExact(input : String, format : String, formatProvider : IFormatProvider, styles : cs.system.globalization.TimeSpanStyles, result : cs.Out<TimeSpan>) : Bool;
	static function op_Addition(t1 : TimeSpan, t2 : TimeSpan) : TimeSpan;
	static function op_Equality(t1 : TimeSpan, t2 : TimeSpan) : Bool;
	static function op_GreaterThan(t1 : TimeSpan, t2 : TimeSpan) : Bool;
	static function op_GreaterThanOrEqual(t1 : TimeSpan, t2 : TimeSpan) : Bool;
	static function op_Inequality(t1 : TimeSpan, t2 : TimeSpan) : Bool;
	static function op_LessThan(t1 : TimeSpan, t2 : TimeSpan) : Bool;
	static function op_LessThanOrEqual(t1 : TimeSpan, t2 : TimeSpan) : Bool;
	static function op_Subtraction(t1 : TimeSpan, t2 : TimeSpan) : TimeSpan;
	static function op_UnaryNegation(t : TimeSpan) : TimeSpan;
	static function op_UnaryPlus(t : TimeSpan) : TimeSpan;
}
