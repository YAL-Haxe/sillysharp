package cs.system.collections;

@:nativeGen @:libType @:csNative @:native("System.Collections.Hashtable.SyncHashtable") extern class Hashtable_SyncHashtable extends Hashtable implements IEnumerable {
	var Count(get,never) : Int;
	var IsFixedSize(get,never) : Bool;
	var IsReadOnly(get,never) : Bool;
	var IsSynchronized(get,never) : Bool;
	var Keys(get,never) : ICollection;
	var SyncRoot(get,never) : Dynamic;
	var Values(get,never) : ICollection;
	function new(host : Hashtable) : Void;
	function Add(key : Dynamic, value : Dynamic) : Void;
	function Clear() : Void;
	function Clone() : Dynamic;
	function Contains(key : Dynamic) : Bool;
	function ContainsKey(key : Dynamic) : Bool;
	function ContainsValue(value : Dynamic) : Bool;
	function CopyTo(array : cs.system.Array, arrayIndex : Int) : Void;
	@:noCompletion @:skipReflection function GetEnumerator() : IDictionaryEnumerator;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function Remove(key : Dynamic) : Void;
	function get_Count() : Int;
	function get_IsFixedSize() : Bool;
	function get_IsReadOnly() : Bool;
	function get_IsSynchronized() : Bool;
	function get_Item(key : Dynamic) : Dynamic;
	function get_Keys() : ICollection;
	function get_SyncRoot() : Dynamic;
	function get_Values() : ICollection;
	function set_Item(key : Dynamic, value : Dynamic) : Void;
}
