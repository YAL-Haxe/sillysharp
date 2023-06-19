package cs.system.collections.generic;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Collections.Generic.IList") extern interface IList_1<T0> extends ICollection_1<T0> extends IEnumerable_1<T0> extends cs.system.collections.IEnumerable extends ArrayAccess<T0> {
	function IndexOf(item : T0) : Int;
	function Insert(index : Int, item : T0) : Void;
	function RemoveAt(index : Int) : Void;
	function get_Item(index : Int) : T0;
	function set_Item(index : Int, value : T0) : Void;
}
