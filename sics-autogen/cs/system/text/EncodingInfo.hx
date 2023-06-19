package cs.system.text;

@:nativeGen @:libType @:csNative @:native("System.Text.EncodingInfo") extern final class EncodingInfo {
	var CodePage(get,never) : Int;
	var DisplayName(get,never) : String;
	var Name(get,never) : String;
	function GetEncoding() : Encoding;
	function get_CodePage() : Int;
	function get_DisplayName() : String;
	function get_Name() : String;
}
