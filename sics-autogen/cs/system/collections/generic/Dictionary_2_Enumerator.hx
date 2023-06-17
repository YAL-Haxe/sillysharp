package cs.system.collections.generic;

@:nativeGen @:struct @:libType @:csNative @:native("System.Collections.Generic.Dictionary`2.Enumerator") extern final class Dictionary_2_Enumerator<T0,T1> extends cs.system.ValueType implements IEnumerator_1<KeyValuePair_2<T0,T1>> implements cs.system.IDisposable implements cs.system.collections.IDictionaryEnumerator implements cs.system.collections.IEnumerator {
	@:noCompletion @:skipReflection var Current(get,never) : KeyValuePair_2<T0,T1>;
	function Dispose() : Void;
	function MoveNext() : Bool;
	@:noCompletion @:skipReflection function Reset() : Void;
	@:noCompletion @:skipReflection function get_Current() : KeyValuePair_2<T0,T1>;
}
