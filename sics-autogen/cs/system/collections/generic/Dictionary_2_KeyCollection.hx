package cs.system.collections.generic;

@:nativeGen @:libType @:csNative @:native("System.Collections.Generic.Dictionary`2.KeyCollection") extern final class Dictionary_2_KeyCollection<T0,T1> implements ICollection_1<T0> implements IEnumerable_1<T0> implements cs.system.collections.ICollection implements cs.system.collections.IEnumerable {
	var Count(get,never) : Int;
	function new(dictionary : Dictionary_2<T0,T1>) : Void;
	@:noCompletion @:skipReflection function CopyTo(array : cs.NativeArray<T0>, index : Int) : Void;
	@:noCompletion @:skipReflection function GetEnumerator() : Dictionary_2_KeyCollection_Enumerator<T0,T1>;
	function get_Count() : Int;
}
