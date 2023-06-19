package cs.system.collections.generic;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Collections.Generic.ICollection") extern interface ICollection_1<T0> extends IEnumerable_1<T0> extends cs.system.collections.IEnumerable {
	var Count(get,never) : Int;
	var IsReadOnly(get,never) : Bool;
	function Add(item : T0) : Void;
	function Clear() : Void;
	function Contains(item : T0) : Bool;
	function CopyTo(array : cs.NativeArray<T0>, arrayIndex : Int) : Void;
	function Remove(item : T0) : Bool;
	function get_Count() : Int;
	function get_IsReadOnly() : Bool;
}
