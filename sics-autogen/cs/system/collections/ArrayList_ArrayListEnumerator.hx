package cs.system.collections;

@:nativeGen @:libType @:csNative @:native("System.Collections.ArrayList.ArrayListEnumerator") extern final class ArrayList_ArrayListEnumerator implements IEnumerator implements cs.system.ICloneable {
	var Current(get,never) : Dynamic;
	@:overload(function(list : ArrayList) : Void {})
	function new(list : ArrayList, index : Int, count : Int) : Void;
	function Clone() : Dynamic;
	function MoveNext() : Bool;
	function Reset() : Void;
	function get_Current() : Dynamic;
}
