package cs.system.collections.objectmodel;

@:nativeGen @:libType @:csNative @:native("System.Collections.ObjectModel.ReadOnlyCollection") extern class ReadOnlyCollection_1<T0> implements cs.system.collections.generic.IList_1<T0> implements cs.system.collections.IList implements cs.system.collections.generic.IReadOnlyList_1<T0> implements cs.system.collections.generic.ICollection_1<T0> implements cs.system.collections.generic.IEnumerable_1<T0> implements cs.system.collections.IEnumerable implements cs.system.collections.ICollection implements cs.system.collections.generic.IReadOnlyCollection_1<T0> {
	var Count(get,never) : Int;
	private var Items(null,never) : cs.system.collections.generic.IList_1<T0>;
	function new(list : cs.system.collections.generic.IList_1<T0>) : Void;
	@:noCompletion @:skipReflection function Contains(value : T0) : Bool;
	@:noCompletion @:skipReflection function CopyTo(array : cs.NativeArray<T0>, index : Int) : Void;
	@:noCompletion @:skipReflection function GetEnumerator() : cs.system.collections.generic.IEnumerator_1<T0>;
	@:noCompletion @:skipReflection function IndexOf(value : T0) : Int;
	function get_Count() : Int;
	@:noCompletion @:skipReflection function get_Item(index : Int) : T0;
	@:protected private function get_Items() : cs.system.collections.generic.IList_1<T0>;
}
