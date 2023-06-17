package cs.system.collections;

@:nativeGen @:libType @:csNative @:native("System.Collections.Hashtable.HashKeys") extern class Hashtable_HashKeys implements ICollection implements IEnumerable {
	var Count(get,never) : Int;
	var IsSynchronized(get,never) : Bool;
	var SyncRoot(get,never) : Dynamic;
	function new(host : Hashtable) : Void;
	function CopyTo(array : cs.system.Array, arrayIndex : Int) : Void;
	function GetEnumerator() : IEnumerator;
	function get_Count() : Int;
	function get_IsSynchronized() : Bool;
	function get_SyncRoot() : Dynamic;
}
