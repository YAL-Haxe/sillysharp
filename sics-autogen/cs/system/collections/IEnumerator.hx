package cs.system.collections;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Collections.IEnumerator") extern interface IEnumerator {
	var Current(get,never) : Dynamic;
	function MoveNext() : Bool;
	function Reset() : Void;
	function get_Current() : Dynamic;
}
