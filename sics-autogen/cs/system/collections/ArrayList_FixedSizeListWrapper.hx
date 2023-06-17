package cs.system.collections;

@:nativeGen @:libType @:csNative @:native("System.Collections.ArrayList.FixedSizeListWrapper") extern class ArrayList_FixedSizeListWrapper extends ArrayList_ListWrapper {
	private var ErrorMessage(null,never) : String;
	var IsFixedSize(get,never) : Bool;
	function new(innerList : IList) : Void;
	function Add(value : Dynamic) : Int;
	function Clear() : Void;
	function Insert(index : Int, value : Dynamic) : Void;
	function Remove(value : Dynamic) : Void;
	function RemoveAt(index : Int) : Void;
	@:protected private function get_ErrorMessage() : String;
	function get_IsFixedSize() : Bool;
}
