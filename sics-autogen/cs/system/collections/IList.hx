package cs.system.collections;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Collections.IList") extern interface IList extends ICollection extends IEnumerable extends ArrayAccess<Dynamic> {
	var IsFixedSize(get,never) : Bool;
	var IsReadOnly(get,never) : Bool;
	function Add(value : Dynamic) : Int;
	function Clear() : Void;
	function Contains(value : Dynamic) : Bool;
	function IndexOf(value : Dynamic) : Int;
	function Insert(index : Int, value : Dynamic) : Void;
	function Remove(value : Dynamic) : Void;
	function RemoveAt(index : Int) : Void;
	function get_IsFixedSize() : Bool;
	function get_IsReadOnly() : Bool;
	function get_Item(index : Int) : Dynamic;
	function set_Item(index : Int, value : Dynamic) : Void;
}
