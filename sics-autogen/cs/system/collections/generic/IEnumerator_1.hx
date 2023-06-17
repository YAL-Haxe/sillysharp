package cs.system.collections.generic;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Collections.Generic.IEnumerator`1") extern interface IEnumerator_1<T0> extends cs.system.IDisposable extends cs.system.collections.IEnumerator {
	var Current(get,never) : T0;
	function get_Current() : T0;
}
