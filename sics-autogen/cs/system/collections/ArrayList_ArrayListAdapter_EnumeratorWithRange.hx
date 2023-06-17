package cs.system.collections;

@:nativeGen @:libType @:csNative @:native("System.Collections.ArrayList.ArrayListAdapter.EnumeratorWithRange") extern final class ArrayList_ArrayListAdapter_EnumeratorWithRange implements IEnumerator implements cs.system.ICloneable {
	var Current(get,never) : Dynamic;
	function new(enumerator : IEnumerator, index : Int, count : Int) : Void;
	function Clone() : Dynamic;
	function MoveNext() : Bool;
	function Reset() : Void;
	function get_Current() : Dynamic;
}
