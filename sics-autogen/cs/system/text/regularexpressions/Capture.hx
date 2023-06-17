package cs.system.text.regularexpressions;

@:nativeGen @:libType @:csNative @:native("System.Text.RegularExpressions.Capture") extern class Capture {
	var Index(get,never) : Int;
	var Length(get,never) : Int;
	var Value(get,never) : String;
	function ToString() : String;
	function get_Index() : Int;
	function get_Length() : Int;
	function get_Value() : String;
}
