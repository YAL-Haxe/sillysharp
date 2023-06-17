package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.DateTime") extern final class DateTime extends ValueType implements IFormattable implements IConvertible implements IComparable implements cs.system.runtime.serialization.ISerializable implements IComparable_1<DateTime> implements IEquatable_1<DateTime> {
	var Date(get,never) : DateTime;
	var Day(get,never) : Int;
	var DayOfWeek(get,never) : DayOfWeek;
	var DayOfYear(get,never) : Int;
	var Hour(get,never) : Int;
	var Kind(get,never) : DateTimeKind;
	var Millisecond(get,never) : Int;
	var Minute(get,never) : Int;
	var Month(get,never) : Int;
	var Second(get,never) : Int;
	var Ticks(get,never) : haxe.Int64;
	var TimeOfDay(get,never) : TimeSpan;
	var Year(get,never) : Int;
	@:overload(function(ticks : haxe.Int64) : Void {})
	@:overload(function(year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Int, millisecond : Int, calendar : cs.system.globalization.Calendar, kind : DateTimeKind) : Void {})
	@:overload(function(year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Int, millisecond : Int, kind : DateTimeKind) : Void {})
	@:overload(function(year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Int, kind : DateTimeKind) : Void {})
	@:overload(function(ticks : haxe.Int64, kind : DateTimeKind) : Void {})
	@:overload(function(year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Int, millisecond : Int, calendar : cs.system.globalization.Calendar) : Void {})
	@:overload(function(year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Int, calendar : cs.system.globalization.Calendar) : Void {})
	@:overload(function(year : Int, month : Int, day : Int, calendar : cs.system.globalization.Calendar) : Void {})
	@:overload(function(year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Int, millisecond : Int) : Void {})
	@:overload(function(year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Int) : Void {})
	function new(year : Int, month : Int, day : Int) : Void;
	function Add(value : TimeSpan) : DateTime;
	function AddDays(value : Float) : DateTime;
	function AddHours(value : Float) : DateTime;
	function AddMilliseconds(value : Float) : DateTime;
	function AddMinutes(value : Float) : DateTime;
	function AddMonths(months : Int) : DateTime;
	function AddSeconds(value : Float) : DateTime;
	function AddTicks(value : haxe.Int64) : DateTime;
	function AddYears(value : Int) : DateTime;
	@:overload(function(value : Dynamic) : Int {})
	function CompareTo(value : DateTime) : Int;
	@:overload(function() : cs.NativeArray<String> {})
	@:overload(function(format : cs.types.Char16, provider : IFormatProvider) : cs.NativeArray<String> {})
	@:overload(function(provider : IFormatProvider) : cs.NativeArray<String> {})
	function GetDateTimeFormats(format : cs.types.Char16) : cs.NativeArray<String>;
	function GetTypeCode() : TypeCode;
	function IsDaylightSavingTime() : Bool;
	@:overload(function(value : DateTime) : TimeSpan {})
	function Subtract(value : TimeSpan) : DateTime;
	function ToBinary() : haxe.Int64;
	function ToFileTime() : haxe.Int64;
	function ToFileTimeUtc() : haxe.Int64;
	function ToLocalTime() : DateTime;
	function ToLongDateString() : String;
	function ToLongTimeString() : String;
	function ToOADate() : Float;
	function ToShortDateString() : String;
	function ToShortTimeString() : String;
	@:overload(function() : String {})
	@:overload(function(format : String, provider : IFormatProvider) : String {})
	@:overload(function(format : String) : String {})
	function ToString(provider : IFormatProvider) : String;
	function ToUniversalTime() : DateTime;
	function get_Date() : DateTime;
	function get_Day() : Int;
	function get_DayOfWeek() : DayOfWeek;
	function get_DayOfYear() : Int;
	function get_Hour() : Int;
	function get_Kind() : DateTimeKind;
	function get_Millisecond() : Int;
	function get_Minute() : Int;
	function get_Month() : Int;
	function get_Second() : Int;
	function get_Ticks() : haxe.Int64;
	function get_TimeOfDay() : TimeSpan;
	function get_Year() : Int;
	@:readOnly static var MaxValue(default,never) : DateTime;
	@:readOnly static var MinValue(default,never) : DateTime;
	static var Now(get,never) : DateTime;
	static var Today(get,never) : DateTime;
	static var UtcNow(get,never) : DateTime;
	static function Compare(t1 : DateTime, t2 : DateTime) : Int;
	static function DaysInMonth(year : Int, month : Int) : Int;
	@:native("Equals") static function _Equals(t1 : DateTime, t2 : DateTime) : Bool;
	static function FromBinary(dateData : haxe.Int64) : DateTime;
	static function FromFileTime(fileTime : haxe.Int64) : DateTime;
	static function FromFileTimeUtc(fileTime : haxe.Int64) : DateTime;
	static function FromOADate(d : Float) : DateTime;
	static function IsLeapYear(year : Int) : Bool;
	@:overload(function(s : String) : DateTime {})
	@:overload(function(s : String, provider : IFormatProvider, styles : cs.system.globalization.DateTimeStyles) : DateTime {})
	static function Parse(s : String, provider : IFormatProvider) : DateTime;
	@:overload(function(s : String, format : String, provider : IFormatProvider) : DateTime {})
	@:overload(function(s : String, formats : cs.NativeArray<String>, provider : IFormatProvider, style : cs.system.globalization.DateTimeStyles) : DateTime {})
	static function ParseExact(s : String, format : String, provider : IFormatProvider, style : cs.system.globalization.DateTimeStyles) : DateTime;
	static function SpecifyKind(value : DateTime, kind : DateTimeKind) : DateTime;
	@:overload(function(s : String, result : cs.Out<DateTime>) : Bool {})
	static function TryParse(s : String, provider : IFormatProvider, styles : cs.system.globalization.DateTimeStyles, result : cs.Out<DateTime>) : Bool;
	@:overload(function(s : String, format : String, provider : IFormatProvider, style : cs.system.globalization.DateTimeStyles, result : cs.Out<DateTime>) : Bool {})
	static function TryParseExact(s : String, formats : cs.NativeArray<String>, provider : IFormatProvider, style : cs.system.globalization.DateTimeStyles, result : cs.Out<DateTime>) : Bool;
	static function get_Now() : DateTime;
	static function get_Today() : DateTime;
	static function get_UtcNow() : DateTime;
	static function op_Addition(d : DateTime, t : TimeSpan) : DateTime;
	static function op_Equality(d1 : DateTime, d2 : DateTime) : Bool;
	static function op_GreaterThan(t1 : DateTime, t2 : DateTime) : Bool;
	static function op_GreaterThanOrEqual(t1 : DateTime, t2 : DateTime) : Bool;
	static function op_Inequality(d1 : DateTime, d2 : DateTime) : Bool;
	static function op_LessThan(t1 : DateTime, t2 : DateTime) : Bool;
	static function op_LessThanOrEqual(t1 : DateTime, t2 : DateTime) : Bool;
	@:overload(function(d1 : DateTime, d2 : DateTime) : TimeSpan {})
	static function op_Subtraction(d : DateTime, t : TimeSpan) : DateTime;
}
