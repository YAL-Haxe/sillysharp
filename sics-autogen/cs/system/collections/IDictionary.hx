package cs.system.collections;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Collections.IDictionary") extern interface IDictionary extends ICollection extends IEnumerable extends ArrayAccess<Dynamic> {
	var IsFixedSize(get,never) : Bool;
	var IsReadOnly(get,never) : Bool;
	var Keys(get,never) : ICollection;
	var Values(get,never) : ICollection;
	function Add(key : Dynamic, value : Dynamic) : Void;
	function Clear() : Void;
	function Contains(key : Dynamic) : Bool;
	function GetEnumerator() : IDictionaryEnumerator;
	function Remove(key : Dynamic) : Void;
	function get_IsFixedSize() : Bool;
	function get_IsReadOnly() : Bool;
	function get_Item(key : Dynamic) : Dynamic;
	function get_Keys() : ICollection;
	function get_Values() : ICollection;
	function set_Item(key : Dynamic, value : Dynamic) : Void;
}
