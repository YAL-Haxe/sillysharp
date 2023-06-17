package cs.system.collections;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Collections.IEnumerable") extern interface IEnumerable {
	function GetEnumerator() : IEnumerator;
}
