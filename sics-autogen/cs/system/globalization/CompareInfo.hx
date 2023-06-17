package cs.system.globalization;

@:nativeGen @:libType @:csNative @:native("System.Globalization.CompareInfo") extern class CompareInfo implements cs.system.runtime.serialization.IDeserializationCallback {
	var LCID(get,never) : Int;
	var Name(get,never) : String;
	@:overload(function(string1 : String, string2 : String) : Int {})
	@:overload(function(string1 : String, offset1 : Int, length1 : Int, string2 : String, offset2 : Int, length2 : Int, options : CompareOptions) : Int {})
	@:overload(function(string1 : String, offset1 : Int, length1 : Int, string2 : String, offset2 : Int, length2 : Int) : Int {})
	@:overload(function(string1 : String, offset1 : Int, string2 : String, offset2 : Int, options : CompareOptions) : Int {})
	@:overload(function(string1 : String, offset1 : Int, string2 : String, offset2 : Int) : Int {})
	function Compare(string1 : String, string2 : String, options : CompareOptions) : Int;
	@:overload(function(source : String) : SortKey {})
	function GetSortKey(source : String, options : CompareOptions) : SortKey;
	@:overload(function(source : String, value : cs.types.Char16) : Int {})
	@:overload(function(source : String, value : String, startIndex : Int, count : Int, options : CompareOptions) : Int {})
	@:overload(function(source : String, value : cs.types.Char16, startIndex : Int, count : Int, options : CompareOptions) : Int {})
	@:overload(function(source : String, value : String, startIndex : Int, count : Int) : Int {})
	@:overload(function(source : String, value : String, startIndex : Int, options : CompareOptions) : Int {})
	@:overload(function(source : String, value : cs.types.Char16, startIndex : Int, count : Int) : Int {})
	@:overload(function(source : String, value : cs.types.Char16, startIndex : Int, options : CompareOptions) : Int {})
	@:overload(function(source : String, value : String, startIndex : Int) : Int {})
	@:overload(function(source : String, value : String, options : CompareOptions) : Int {})
	@:overload(function(source : String, value : cs.types.Char16, startIndex : Int) : Int {})
	@:overload(function(source : String, value : cs.types.Char16, options : CompareOptions) : Int {})
	function IndexOf(source : String, value : String) : Int;
	@:overload(function(source : String, prefix : String) : Bool {})
	function IsPrefix(source : String, prefix : String, options : CompareOptions) : Bool;
	@:overload(function(source : String, suffix : String) : Bool {})
	function IsSuffix(source : String, suffix : String, options : CompareOptions) : Bool;
	@:overload(function(source : String, value : cs.types.Char16) : Int {})
	@:overload(function(source : String, value : String, startIndex : Int, count : Int, options : CompareOptions) : Int {})
	@:overload(function(source : String, value : cs.types.Char16, startIndex : Int, count : Int, options : CompareOptions) : Int {})
	@:overload(function(source : String, value : String, startIndex : Int, count : Int) : Int {})
	@:overload(function(source : String, value : String, startIndex : Int, options : CompareOptions) : Int {})
	@:overload(function(source : String, value : cs.types.Char16, startIndex : Int, count : Int) : Int {})
	@:overload(function(source : String, value : cs.types.Char16, startIndex : Int, options : CompareOptions) : Int {})
	@:overload(function(source : String, value : String, startIndex : Int) : Int {})
	@:overload(function(source : String, value : String, options : CompareOptions) : Int {})
	@:overload(function(source : String, value : cs.types.Char16, startIndex : Int) : Int {})
	@:overload(function(source : String, value : cs.types.Char16, options : CompareOptions) : Int {})
	function LastIndexOf(source : String, value : String) : Int;
	function ToString() : String;
	function get_LCID() : Int;
	function get_Name() : String;
	@:overload(function(culture : Int) : CompareInfo {})
	@:overload(function(name : String, assembly : cs.system.reflection.Assembly) : CompareInfo {})
	@:overload(function(culture : Int, assembly : cs.system.reflection.Assembly) : CompareInfo {})
	static function GetCompareInfo(name : String) : CompareInfo;
	@:overload(function(ch : cs.types.Char16) : Bool {})
	static function IsSortable(text : String) : Bool;
}
