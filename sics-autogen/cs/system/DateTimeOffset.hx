package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.DateTimeOffset") extern final class DateTimeOffset extends ValueType implements IComparable implements IFormattable implements cs.system.runtime.serialization.ISerializable implements cs.system.runtime.serialization.IDeserializationCallback implements IComparable_1<DateTimeOffset> implements IEquatable_1<DateTimeOffset> {
	var Date(get,never) : DateTime;
	var DateTime(get,never) : DateTime;
	var Day(get,never) : Int;
	var DayOfWeek(get,never) : DayOfWeek;
	var DayOfYear(get,never) : Int;
	var Hour(get,never) : Int;
	var LocalDateTime(get,never) : DateTime;
	var Millisecond(get,never) : Int;
	var Minute(get,never) : Int;
	var Month(get,never) : Int;
	var Offset(get,never) : TimeSpan;
	var Second(get,never) : Int;
	var Ticks(get,never) : haxe.Int64;
	var TimeOfDay(get,never) : TimeSpan;
	var UtcDateTime(get,never) : DateTime;
	var UtcTicks(get,never) : haxe.Int64;
	var Year(get,never) : Int;
	@:overload(function(dateTime : DateTime) : Void {})
	@:overload(function(year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Int, millisecond : Int, calendar : cs.system.globalization.Calendar, offset : TimeSpan) : Void {})
	@:overload(function(year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Int, millisecond : Int, offset : TimeSpan) : Void {})
	@:overload(function(year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Int, offset : TimeSpan) : Void {})
	@:overload(function(ticks : haxe.Int64, offset : TimeSpan) : Void {})
	function new(dateTime : DateTime, offset : TimeSpan) : Void;
	function Add(timeSpan : TimeSpan) : DateTimeOffset;
	function AddDays(days : Float) : DateTimeOffset;
	function AddHours(hours : Float) : DateTimeOffset;
	function AddMilliseconds(milliseconds : Float) : DateTimeOffset;
	function AddMinutes(minutes : Float) : DateTimeOffset;
	function AddMonths(months : Int) : DateTimeOffset;
	function AddSeconds(seconds : Float) : DateTimeOffset;
	function AddTicks(ticks : haxe.Int64) : DateTimeOffset;
	function AddYears(years : Int) : DateTimeOffset;
	@:noCompletion @:skipReflection function CompareTo(other : DateTimeOffset) : Int;
	function EqualsExact(other : DateTimeOffset) : Bool;
	@:overload(function(value : DateTimeOffset) : TimeSpan {})
	function Subtract(value : TimeSpan) : DateTimeOffset;
	function ToFileTime() : haxe.Int64;
	function ToLocalTime() : DateTimeOffset;
	function ToOffset(offset : TimeSpan) : DateTimeOffset;
	@:overload(function() : String {})
	@:overload(function(format : String, formatProvider : IFormatProvider) : String {})
	@:overload(function(format : String) : String {})
	function ToString(formatProvider : IFormatProvider) : String;
	function ToUniversalTime() : DateTimeOffset;
	function get_Date() : DateTime;
	function get_DateTime() : DateTime;
	function get_Day() : Int;
	function get_DayOfWeek() : DayOfWeek;
	function get_DayOfYear() : Int;
	function get_Hour() : Int;
	function get_LocalDateTime() : DateTime;
	function get_Millisecond() : Int;
	function get_Minute() : Int;
	function get_Month() : Int;
	function get_Offset() : TimeSpan;
	function get_Second() : Int;
	function get_Ticks() : haxe.Int64;
	function get_TimeOfDay() : TimeSpan;
	function get_UtcDateTime() : DateTime;
	function get_UtcTicks() : haxe.Int64;
	function get_Year() : Int;
	@:readOnly static var MaxValue(default,never) : DateTimeOffset;
	@:readOnly static var MinValue(default,never) : DateTimeOffset;
	static var Now(get,never) : DateTimeOffset;
	static var UtcNow(get,never) : DateTimeOffset;
	static function Compare(first : DateTimeOffset, second : DateTimeOffset) : Int;
	@:native("Equals") static function _Equals(first : DateTimeOffset, second : DateTimeOffset) : Bool;
	static function FromFileTime(fileTime : haxe.Int64) : DateTimeOffset;
	@:overload(function(input : String) : DateTimeOffset {})
	@:overload(function(input : String, formatProvider : IFormatProvider, styles : cs.system.globalization.DateTimeStyles) : DateTimeOffset {})
	static function Parse(input : String, formatProvider : IFormatProvider) : DateTimeOffset;
	@:overload(function(input : String, format : String, formatProvider : IFormatProvider) : DateTimeOffset {})
	@:overload(function(input : String, formats : cs.NativeArray<String>, formatProvider : IFormatProvider, styles : cs.system.globalization.DateTimeStyles) : DateTimeOffset {})
	static function ParseExact(input : String, format : String, formatProvider : IFormatProvider, styles : cs.system.globalization.DateTimeStyles) : DateTimeOffset;
	@:overload(function(input : String, result : cs.Out<DateTimeOffset>) : Bool {})
	static function TryParse(input : String, formatProvider : IFormatProvider, styles : cs.system.globalization.DateTimeStyles, result : cs.Out<DateTimeOffset>) : Bool;
	@:overload(function(input : String, format : String, formatProvider : IFormatProvider, styles : cs.system.globalization.DateTimeStyles, result : cs.Out<DateTimeOffset>) : Bool {})
	static function TryParseExact(input : String, formats : cs.NativeArray<String>, formatProvider : IFormatProvider, styles : cs.system.globalization.DateTimeStyles, result : cs.Out<DateTimeOffset>) : Bool;
	static function get_Now() : DateTimeOffset;
	static function get_UtcNow() : DateTimeOffset;
	static function op_Addition(dateTimeOffset : DateTimeOffset, timeSpan : TimeSpan) : DateTimeOffset;
	static function op_Equality(left : DateTimeOffset, right : DateTimeOffset) : Bool;
	static function op_GreaterThan(left : DateTimeOffset, right : DateTimeOffset) : Bool;
	static function op_GreaterThanOrEqual(left : DateTimeOffset, right : DateTimeOffset) : Bool;
	static function op_Implicit(dateTime : DateTime) : DateTimeOffset;
	static function op_Inequality(left : DateTimeOffset, right : DateTimeOffset) : Bool;
	static function op_LessThan(left : DateTimeOffset, right : DateTimeOffset) : Bool;
	static function op_LessThanOrEqual(left : DateTimeOffset, right : DateTimeOffset) : Bool;
	@:overload(function(left : DateTimeOffset, right : DateTimeOffset) : TimeSpan {})
	static function op_Subtraction(dateTimeOffset : DateTimeOffset, timeSpan : TimeSpan) : DateTimeOffset;
}
