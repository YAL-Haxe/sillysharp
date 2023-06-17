package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.LocalVariableInfo") extern class LocalVariableInfo {
	var IsPinned(get,never) : Bool;
	var LocalIndex(get,never) : Int;
	var LocalType(get,never) : cs.system.Type;
	@:protected private function new() : Void;
	function ToString() : String;
	function get_IsPinned() : Bool;
	function get_LocalIndex() : Int;
	function get_LocalType() : cs.system.Type;
}
