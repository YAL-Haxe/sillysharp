package cs.system.globalization;

@:nativeGen @:libType @:csNative @:native("System.Globalization.DateTimeFormatInfo") extern final class DateTimeFormatInfo implements cs.system.ICloneable implements cs.system.IFormatProvider {
	var AMDesignator(get,set) : String;
	var AbbreviatedDayNames(get,set) : cs.NativeArray<String>;
	var AbbreviatedMonthGenitiveNames(get,set) : cs.NativeArray<String>;
	var AbbreviatedMonthNames(get,set) : cs.NativeArray<String>;
	var Calendar(get,set) : Calendar;
	var CalendarWeekRule(get,set) : CalendarWeekRule;
	var DateSeparator(get,set) : String;
	var DayNames(get,set) : cs.NativeArray<String>;
	var FirstDayOfWeek(get,set) : cs.system.DayOfWeek;
	var FullDateTimePattern(get,set) : String;
	var IsReadOnly(get,never) : Bool;
	var LongDatePattern(get,set) : String;
	var LongTimePattern(get,set) : String;
	var MonthDayPattern(get,set) : String;
	var MonthGenitiveNames(get,set) : cs.NativeArray<String>;
	var MonthNames(get,set) : cs.NativeArray<String>;
	var NativeCalendarName(get,never) : String;
	var PMDesignator(get,set) : String;
	var RFC1123Pattern(get,never) : String;
	var ShortDatePattern(get,set) : String;
	var ShortTimePattern(get,set) : String;
	var ShortestDayNames(get,set) : cs.NativeArray<String>;
	var SortableDateTimePattern(get,never) : String;
	var TimeSeparator(get,set) : String;
	var UniversalSortableDateTimePattern(get,never) : String;
	var YearMonthPattern(get,set) : String;
	function new() : Void;
	function Clone() : Dynamic;
	function GetAbbreviatedDayName(dayofweek : cs.system.DayOfWeek) : String;
	function GetAbbreviatedEraName(era : Int) : String;
	function GetAbbreviatedMonthName(month : Int) : String;
	@:overload(function() : cs.NativeArray<String> {})
	function GetAllDateTimePatterns(format : cs.types.Char16) : cs.NativeArray<String>;
	function GetDayName(dayofweek : cs.system.DayOfWeek) : String;
	function GetEra(eraName : String) : Int;
	function GetEraName(era : Int) : String;
	function GetFormat(formatType : cs.system.Type) : Dynamic;
	function GetMonthName(month : Int) : String;
	function GetShortestDayName(dayOfWeek : cs.system.DayOfWeek) : String;
	function SetAllDateTimePatterns(patterns : cs.NativeArray<String>, format : cs.types.Char16) : Void;
	function get_AMDesignator() : String;
	function get_AbbreviatedDayNames() : cs.NativeArray<String>;
	function get_AbbreviatedMonthGenitiveNames() : cs.NativeArray<String>;
	function get_AbbreviatedMonthNames() : cs.NativeArray<String>;
	function get_Calendar() : Calendar;
	function get_CalendarWeekRule() : CalendarWeekRule;
	function get_DateSeparator() : String;
	function get_DayNames() : cs.NativeArray<String>;
	function get_FirstDayOfWeek() : cs.system.DayOfWeek;
	function get_FullDateTimePattern() : String;
	function get_IsReadOnly() : Bool;
	function get_LongDatePattern() : String;
	function get_LongTimePattern() : String;
	function get_MonthDayPattern() : String;
	function get_MonthGenitiveNames() : cs.NativeArray<String>;
	function get_MonthNames() : cs.NativeArray<String>;
	function get_NativeCalendarName() : String;
	function get_PMDesignator() : String;
	function get_RFC1123Pattern() : String;
	function get_ShortDatePattern() : String;
	function get_ShortTimePattern() : String;
	function get_ShortestDayNames() : cs.NativeArray<String>;
	function get_SortableDateTimePattern() : String;
	function get_TimeSeparator() : String;
	function get_UniversalSortableDateTimePattern() : String;
	function get_YearMonthPattern() : String;
	function set_AMDesignator(value : String) : String;
	function set_AbbreviatedDayNames(value : cs.NativeArray<String>) : cs.NativeArray<String>;
	function set_AbbreviatedMonthGenitiveNames(value : cs.NativeArray<String>) : cs.NativeArray<String>;
	function set_AbbreviatedMonthNames(value : cs.NativeArray<String>) : cs.NativeArray<String>;
	function set_Calendar(value : Calendar) : Calendar;
	function set_CalendarWeekRule(value : CalendarWeekRule) : CalendarWeekRule;
	function set_DateSeparator(value : String) : String;
	function set_DayNames(value : cs.NativeArray<String>) : cs.NativeArray<String>;
	function set_FirstDayOfWeek(value : cs.system.DayOfWeek) : cs.system.DayOfWeek;
	function set_FullDateTimePattern(value : String) : String;
	function set_LongDatePattern(value : String) : String;
	function set_LongTimePattern(value : String) : String;
	function set_MonthDayPattern(value : String) : String;
	function set_MonthGenitiveNames(value : cs.NativeArray<String>) : cs.NativeArray<String>;
	function set_MonthNames(value : cs.NativeArray<String>) : cs.NativeArray<String>;
	function set_PMDesignator(value : String) : String;
	function set_ShortDatePattern(value : String) : String;
	function set_ShortTimePattern(value : String) : String;
	function set_ShortestDayNames(value : cs.NativeArray<String>) : cs.NativeArray<String>;
	function set_TimeSeparator(value : String) : String;
	function set_YearMonthPattern(value : String) : String;
	static var CurrentInfo(get,never) : DateTimeFormatInfo;
	static var InvariantInfo(get,never) : DateTimeFormatInfo;
	static function GetInstance(provider : cs.system.IFormatProvider) : DateTimeFormatInfo;
	static function ReadOnly(dtfi : DateTimeFormatInfo) : DateTimeFormatInfo;
	static function get_CurrentInfo() : DateTimeFormatInfo;
	static function get_InvariantInfo() : DateTimeFormatInfo;
}
