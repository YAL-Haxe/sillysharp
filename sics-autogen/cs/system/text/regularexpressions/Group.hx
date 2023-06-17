package cs.system.text.regularexpressions;

@:nativeGen @:libType @:csNative @:native("System.Text.RegularExpressions.Group") extern class Group extends Capture {
	var Captures(get,never) : CaptureCollection;
	var Success(get,never) : Bool;
	function get_Captures() : CaptureCollection;
	function get_Success() : Bool;
	static function Synchronized(inner : Group) : Group;
}
