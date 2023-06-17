package cs.system.globalization;

@:nativeGen @:libType @:csNative @:native("System.Globalization.CultureInfo") extern class CultureInfo implements cs.system.ICloneable implements cs.system.IFormatProvider {
	var Calendar(get,never) : Calendar;
	var CompareInfo(get,never) : CompareInfo;
	var CultureTypes(get,never) : CultureTypes;
	var DateTimeFormat(get,set) : DateTimeFormatInfo;
	var DisplayName(get,never) : String;
	var EnglishName(get,never) : String;
	var IetfLanguageTag(get,never) : String;
	var IsNeutralCulture(get,never) : Bool;
	var IsReadOnly(get,never) : Bool;
	var KeyboardLayoutId(get,never) : Int;
	var LCID(get,never) : Int;
	var Name(get,never) : String;
	var NativeName(get,never) : String;
	var NumberFormat(get,set) : NumberFormatInfo;
	var OptionalCalendars(get,never) : cs.NativeArray<Calendar>;
	var Parent(get,never) : CultureInfo;
	var TextInfo(get,never) : TextInfo;
	var ThreeLetterISOLanguageName(get,never) : String;
	var ThreeLetterWindowsLanguageName(get,never) : String;
	var TwoLetterISOLanguageName(get,never) : String;
	var UseUserOverride(get,never) : Bool;
	@:overload(function(culture : Int) : Void {})
	@:overload(function(name : String, useUserOverride : Bool) : Void {})
	@:overload(function(name : String) : Void {})
	function new(culture : Int, useUserOverride : Bool) : Void;
	function ClearCachedData() : Void;
	function Clone() : Dynamic;
	function GetConsoleFallbackUICulture() : CultureInfo;
	function GetFormat(formatType : cs.system.Type) : Dynamic;
	function ToString() : String;
	function get_Calendar() : Calendar;
	function get_CompareInfo() : CompareInfo;
	function get_CultureTypes() : CultureTypes;
	function get_DateTimeFormat() : DateTimeFormatInfo;
	function get_DisplayName() : String;
	function get_EnglishName() : String;
	function get_IetfLanguageTag() : String;
	function get_IsNeutralCulture() : Bool;
	function get_IsReadOnly() : Bool;
	function get_KeyboardLayoutId() : Int;
	function get_LCID() : Int;
	function get_Name() : String;
	function get_NativeName() : String;
	function get_NumberFormat() : NumberFormatInfo;
	function get_OptionalCalendars() : cs.NativeArray<Calendar>;
	function get_Parent() : CultureInfo;
	function get_TextInfo() : TextInfo;
	function get_ThreeLetterISOLanguageName() : String;
	function get_ThreeLetterWindowsLanguageName() : String;
	function get_TwoLetterISOLanguageName() : String;
	function get_UseUserOverride() : Bool;
	function set_DateTimeFormat(value : DateTimeFormatInfo) : DateTimeFormatInfo;
	function set_NumberFormat(value : NumberFormatInfo) : NumberFormatInfo;
	static var CurrentCulture(get,never) : CultureInfo;
	static var CurrentUICulture(get,never) : CultureInfo;
	static var DefaultThreadCurrentCulture(get,set) : CultureInfo;
	static var DefaultThreadCurrentUICulture(get,set) : CultureInfo;
	static var InstalledUICulture(get,never) : CultureInfo;
	static var InvariantCulture(get,never) : CultureInfo;
	static function CreateSpecificCulture(name : String) : CultureInfo;
	@:overload(function(culture : Int) : CultureInfo {})
	@:overload(function(name : String, altName : String) : CultureInfo {})
	static function GetCultureInfo(name : String) : CultureInfo;
	static function GetCultureInfoByIetfLanguageTag(name : String) : CultureInfo;
	static function GetCultures(types : CultureTypes) : cs.NativeArray<CultureInfo>;
	static function ReadOnly(ci : CultureInfo) : CultureInfo;
	static function get_CurrentCulture() : CultureInfo;
	static function get_CurrentUICulture() : CultureInfo;
	static function get_DefaultThreadCurrentCulture() : CultureInfo;
	static function get_DefaultThreadCurrentUICulture() : CultureInfo;
	static function get_InstalledUICulture() : CultureInfo;
	static function get_InvariantCulture() : CultureInfo;
	static function set_DefaultThreadCurrentCulture(value : CultureInfo) : CultureInfo;
	static function set_DefaultThreadCurrentUICulture(value : CultureInfo) : CultureInfo;
}
