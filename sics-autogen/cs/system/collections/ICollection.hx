package cs.system.collections;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Collections.ICollection") extern interface ICollection extends IEnumerable {
	var Count(get,never) : Int;
	var IsSynchronized(get,never) : Bool;
	var SyncRoot(get,never) : Dynamic;
	function CopyTo(array : cs.system.Array, index : Int) : Void;
	function get_Count() : Int;
	function get_IsSynchronized() : Bool;
	function get_SyncRoot() : Dynamic;
}
