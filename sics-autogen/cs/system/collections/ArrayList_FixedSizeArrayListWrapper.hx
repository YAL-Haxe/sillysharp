package cs.system.collections;

@:nativeGen @:libType @:csNative @:native("System.Collections.ArrayList.FixedSizeArrayListWrapper") extern class ArrayList_FixedSizeArrayListWrapper extends ArrayList_ArrayListWrapper {
	var Capacity(get,set) : Int;
	private var ErrorMessage(null,never) : String;
	var IsFixedSize(get,never) : Bool;
	function new(innerList : ArrayList) : Void;
	function Add(value : Dynamic) : Int;
	function AddRange(c : ICollection) : Void;
	function Clear() : Void;
	function Insert(index : Int, value : Dynamic) : Void;
	function InsertRange(index : Int, c : ICollection) : Void;
	function Remove(value : Dynamic) : Void;
	function RemoveAt(index : Int) : Void;
	function RemoveRange(index : Int, count : Int) : Void;
	function TrimToSize() : Void;
	function get_Capacity() : Int;
	@:protected private function get_ErrorMessage() : String;
	function get_IsFixedSize() : Bool;
	function set_Capacity(value : Int) : Int;
}
