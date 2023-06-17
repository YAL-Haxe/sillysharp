package cs.system.collections.generic;

@:nativeGen @:struct @:libType @:csNative @:native("System.Collections.Generic.Dictionary`2.ValueCollection.Enumerator") extern final class Dictionary_2_ValueCollection_Enumerator<T0,T1> extends cs.system.ValueType implements IEnumerator_1<T1> implements cs.system.IDisposable implements cs.system.collections.IEnumerator {
	@:noCompletion @:skipReflection var Current(get,never) : T1;
	function Dispose() : Void;
	function MoveNext() : Bool;
	@:noCompletion @:skipReflection function get_Current() : T1;
}
