package cs.system.collections.generic;

@:nativeGen @:struct @:libType @:csNative @:native("System.Collections.Generic.Stack`1.Enumerator") extern final class Stack_1_Enumerator<T0> extends cs.system.ValueType implements IEnumerator_1<T0> implements cs.system.collections.IEnumerator implements cs.system.IDisposable {
	@:noCompletion @:skipReflection var Current(get,never) : T0;
	function Dispose() : Void;
	function MoveNext() : Bool;
	@:noCompletion @:skipReflection function get_Current() : T0;
}
