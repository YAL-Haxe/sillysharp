package cs.system.globalization;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Globalization.Calendar") extern class Calendar implements cs.system.ICloneable {
	var AlgorithmType(get,never) : CalendarAlgorithmType;
	var Eras(get,never) : cs.NativeArray<Int>;
	var IsReadOnly(get,never) : Bool;
	var MaxSupportedDateTime(get,never) : cs.system.DateTime;
	var MinSupportedDateTime(get,never) : cs.system.DateTime;
	var TwoDigitYearMax(get,set) : Int;
	@:protected private function new() : Void;
	function AddDays(time : cs.system.DateTime, days : Int) : cs.system.DateTime;
	function AddHours(time : cs.system.DateTime, hours : Int) : cs.system.DateTime;
	function AddMilliseconds(time : cs.system.DateTime, milliseconds : Float) : cs.system.DateTime;
	function AddMinutes(time : cs.system.DateTime, minutes : Int) : cs.system.DateTime;
	function AddMonths(time : cs.system.DateTime, months : Int) : cs.system.DateTime;
	function AddSeconds(time : cs.system.DateTime, seconds : Int) : cs.system.DateTime;
	function AddWeeks(time : cs.system.DateTime, weeks : Int) : cs.system.DateTime;
	function AddYears(time : cs.system.DateTime, years : Int) : cs.system.DateTime;
	function Clone() : Dynamic;
	function GetDayOfMonth(time : cs.system.DateTime) : Int;
	function GetDayOfWeek(time : cs.system.DateTime) : cs.system.DayOfWeek;
	function GetDayOfYear(time : cs.system.DateTime) : Int;
	@:overload(function(year : Int, month : Int) : Int {})
	function GetDaysInMonth(year : Int, month : Int, era : Int) : Int;
	@:overload(function(year : Int) : Int {})
	function GetDaysInYear(year : Int, era : Int) : Int;
	function GetEra(time : cs.system.DateTime) : Int;
	function GetHour(time : cs.system.DateTime) : Int;
	@:overload(function(year : Int) : Int {})
	function GetLeapMonth(year : Int, era : Int) : Int;
	function GetMilliseconds(time : cs.system.DateTime) : Float;
	function GetMinute(time : cs.system.DateTime) : Int;
	function GetMonth(time : cs.system.DateTime) : Int;
	@:overload(function(year : Int) : Int {})
	function GetMonthsInYear(year : Int, era : Int) : Int;
	function GetSecond(time : cs.system.DateTime) : Int;
	function GetWeekOfYear(time : cs.system.DateTime, rule : CalendarWeekRule, firstDayOfWeek : cs.system.DayOfWeek) : Int;
	function GetYear(time : cs.system.DateTime) : Int;
	@:overload(function(year : Int, month : Int, day : Int) : Bool {})
	function IsLeapDay(year : Int, month : Int, day : Int, era : Int) : Bool;
	@:overload(function(year : Int, month : Int) : Bool {})
	function IsLeapMonth(year : Int, month : Int, era : Int) : Bool;
	@:overload(function(year : Int) : Bool {})
	function IsLeapYear(year : Int, era : Int) : Bool;
	@:overload(function(year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Int, millisecond : Int) : cs.system.DateTime {})
	function ToDateTime(year : Int, month : Int, day : Int, hour : Int, minute : Int, second : Int, millisecond : Int, era : Int) : cs.system.DateTime;
	function ToFourDigitYear(year : Int) : Int;
	function get_AlgorithmType() : CalendarAlgorithmType;
	function get_Eras() : cs.NativeArray<Int>;
	function get_IsReadOnly() : Bool;
	function get_MaxSupportedDateTime() : cs.system.DateTime;
	function get_MinSupportedDateTime() : cs.system.DateTime;
	function get_TwoDigitYearMax() : Int;
	function set_TwoDigitYearMax(value : Int) : Int;
	@:readOnly static var CurrentEra(default,never) : Int;
	static function ReadOnly(calendar : Calendar) : Calendar;
}
