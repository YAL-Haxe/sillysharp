package cs.system.globalization;

@:nativeGen @:libType @:csNative @:native("System.Globalization.TextInfo") extern class TextInfo implements cs.system.runtime.serialization.IDeserializationCallback implements cs.system.ICloneable {
	var ANSICodePage(get,never) : Int;
	var CultureName(get,never) : String;
	var EBCDICCodePage(get,never) : Int;
	var IsReadOnly(get,never) : Bool;
	var IsRightToLeft(get,never) : Bool;
	var LCID(get,never) : Int;
	var ListSeparator(get,set) : String;
	var MacCodePage(get,never) : Int;
	var OEMCodePage(get,never) : Int;
	function Clone() : Dynamic;
	@:overload(function(c : cs.types.Char16) : cs.types.Char16 {})
	function ToLower(str : String) : String;
	function ToString() : String;
	function ToTitleCase(str : String) : String;
	@:overload(function(c : cs.types.Char16) : cs.types.Char16 {})
	function ToUpper(str : String) : String;
	function get_ANSICodePage() : Int;
	function get_CultureName() : String;
	function get_EBCDICCodePage() : Int;
	function get_IsReadOnly() : Bool;
	function get_IsRightToLeft() : Bool;
	function get_LCID() : Int;
	function get_ListSeparator() : String;
	function get_MacCodePage() : Int;
	function get_OEMCodePage() : Int;
	function set_ListSeparator(value : String) : String;
	static function ReadOnly(textInfo : TextInfo) : TextInfo;
}
