package cs.system.collections.generic;

@:nativeGen @:libType @:csNative @:native("System.Collections.Generic.Dictionary`2.ValueCollection") extern final class Dictionary_2_ValueCollection<T0,T1> implements ICollection_1<T1> implements IEnumerable_1<T1> implements cs.system.collections.ICollection implements cs.system.collections.IEnumerable {
	var Count(get,never) : Int;
	function new(dictionary : Dictionary_2<T0,T1>) : Void;
	@:noCompletion @:skipReflection function CopyTo(array : cs.NativeArray<T1>, index : Int) : Void;
	@:noCompletion @:skipReflection function GetEnumerator() : Dictionary_2_ValueCollection_Enumerator<T0,T1>;
	function get_Count() : Int;
}
