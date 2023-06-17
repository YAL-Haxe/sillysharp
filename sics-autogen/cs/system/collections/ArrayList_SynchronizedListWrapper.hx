package cs.system.collections;

@:nativeGen @:libType @:csNative @:native("System.Collections.ArrayList.SynchronizedListWrapper") extern final class ArrayList_SynchronizedListWrapper extends ArrayList_ListWrapper {
	var Count(get,never) : Int;
	var IsFixedSize(get,never) : Bool;
	var IsReadOnly(get,never) : Bool;
	var IsSynchronized(get,never) : Bool;
	var SyncRoot(get,never) : Dynamic;
	function new(innerList : IList) : Void;
	function Add(value : Dynamic) : Int;
	function Clear() : Void;
	function Contains(value : Dynamic) : Bool;
	function CopyTo(array : cs.system.Array, index : Int) : Void;
	function GetEnumerator() : IEnumerator;
	function IndexOf(value : Dynamic) : Int;
	function Insert(index : Int, value : Dynamic) : Void;
	function Remove(value : Dynamic) : Void;
	function RemoveAt(index : Int) : Void;
	function get_Count() : Int;
	function get_IsFixedSize() : Bool;
	function get_IsReadOnly() : Bool;
	function get_IsSynchronized() : Bool;
	function get_Item(index : Int) : Dynamic;
	function get_SyncRoot() : Dynamic;
	function set_Item(index : Int, value : Dynamic) : Void;
}
