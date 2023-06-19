package cs.system.collections.generic;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Collections.Generic.IReadOnlyList") extern interface IReadOnlyList_1<T0> extends IReadOnlyCollection_1<T0> extends IEnumerable_1<T0> extends cs.system.collections.IEnumerable extends ArrayAccess<T0> {
	function get_Item(index : Int) : T0;
}
