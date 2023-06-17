package cs.system.collections;

@:nativeGen @:libType @:csNative @:native("System.Collections.ArrayList.SimpleEnumerator") extern final class ArrayList_SimpleEnumerator implements IEnumerator implements cs.system.ICloneable {
	var Current(get,never) : Dynamic;
	function new(list : ArrayList) : Void;
	function Clone() : Dynamic;
	function MoveNext() : Bool;
	function Reset() : Void;
	function get_Current() : Dynamic;
}
