package cs.system.reflection.emit;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Emit.LocalBuilder") extern final class LocalBuilder extends cs.system.reflection.LocalVariableInfo implements cs.system.runtime.interopservices._LocalBuilder {
	var IsPinned(get,never) : Bool;
	var LocalIndex(get,never) : Int;
	var LocalType(get,never) : cs.system.Type;
	@:overload(function(name : String, startOffset : Int, endOffset : Int) : Void {})
	function SetLocalSymInfo(name : String) : Void;
	function get_IsPinned() : Bool;
	function get_LocalIndex() : Int;
	function get_LocalType() : cs.system.Type;
}
