package cs.system.collections.generic;

@:nativeGen @:struct @:libType @:csNative @:native("System.Collections.Generic.List`1.Enumerator") extern final class List_1_Enumerator<T0> extends cs.system.ValueType implements IEnumerator_1<T0> implements cs.system.IDisposable implements cs.system.collections.IEnumerator {
	@:noCompletion @:skipReflection var Current(get,never) : T0;
	function Dispose() : Void;
	function MoveNext() : Bool;
	@:noCompletion @:skipReflection function get_Current() : T0;
}
