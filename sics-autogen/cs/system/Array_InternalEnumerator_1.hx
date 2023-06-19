package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.Array.InternalEnumerator") extern final class Array_InternalEnumerator_1<T0> extends ValueType implements cs.system.collections.generic.IEnumerator_1<T0> implements IDisposable implements cs.system.collections.IEnumerator {
	@:noCompletion @:skipReflection var Current(get,never) : T0;
	function Dispose() : Void;
	function MoveNext() : Bool;
	@:noCompletion @:skipReflection function get_Current() : T0;
}
