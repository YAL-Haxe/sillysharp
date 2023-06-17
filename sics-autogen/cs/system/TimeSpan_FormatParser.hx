package cs.system;

@:nativeGen @:libType @:csNative @:native("System.TimeSpan.FormatParser") extern class TimeSpan_FormatParser {
	var AtEnd(get,never) : Bool;
	function new(format : String) : Void;
	function GetNextElement() : TimeSpan_FormatElement;
	function get_AtEnd() : Bool;
}
