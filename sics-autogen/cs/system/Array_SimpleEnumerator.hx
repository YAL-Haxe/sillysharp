package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Array.SimpleEnumerator") extern class Array_SimpleEnumerator implements cs.system.collections.IEnumerator implements ICloneable {
	var Current(get,never) : Dynamic;
	function new(arrayToEnumerate : Array) : Void;
	function Clone() : Dynamic;
	function MoveNext() : Bool;
	function Reset() : Void;
	function get_Current() : Dynamic;
}
