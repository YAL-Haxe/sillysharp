package cs.system.collections;

@:nativeGen @:libType @:csNative @:native("System.Collections.Hashtable") extern class Hashtable implements IDictionary implements ICollection implements IEnumerable implements cs.system.ICloneable implements cs.system.runtime.serialization.ISerializable implements cs.system.runtime.serialization.IDeserializationCallback {
	var Count(get,never) : Int;
	private var EqualityComparer(null,never) : IEqualityComparer;
	var IsFixedSize(get,never) : Bool;
	var IsReadOnly(get,never) : Bool;
	var IsSynchronized(get,never) : Bool;
	var Keys(get,never) : ICollection;
	var SyncRoot(get,never) : Dynamic;
	var Values(get,never) : ICollection;
	private var comparer(null,never) : IComparer;
	private var hcp(null,never) : IHashCodeProvider;
	@:overload(function() : Void {})
	@:overload(function(capacity : Int, loadFactor : Single, equalityComparer : IEqualityComparer) : Void {})
	@:overload(function(capacity : Int, equalityComparer : IEqualityComparer) : Void {})
	@:overload(function(equalityComparer : IEqualityComparer) : Void {})
	@:overload(function(d : IDictionary, loadFactor : Single, equalityComparer : IEqualityComparer) : Void {})
	@:overload(function(d : IDictionary, equalityComparer : IEqualityComparer) : Void {})
	@:overload(function(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void {})
	@:overload(function(hcp : IHashCodeProvider, comparer : IComparer) : Void {})
	@:overload(function(d : IDictionary, hcp : IHashCodeProvider, comparer : IComparer) : Void {})
	@:overload(function(d : IDictionary) : Void {})
	@:overload(function(d : IDictionary, loadFactor : Single) : Void {})
	@:overload(function(d : IDictionary, loadFactor : Single, hcp : IHashCodeProvider, comparer : IComparer) : Void {})
	@:overload(function(capacity : Int, hcp : IHashCodeProvider, comparer : IComparer) : Void {})
	@:overload(function(capacity : Int) : Void {})
	@:overload(function(capacity : Int, loadFactor : Single) : Void {})
	function new(capacity : Int, loadFactor : Single, hcp : IHashCodeProvider, comparer : IComparer) : Void;
	function Add(key : Dynamic, value : Dynamic) : Void;
	function Clear() : Void;
	function Clone() : Dynamic;
	function Contains(key : Dynamic) : Bool;
	function ContainsKey(key : Dynamic) : Bool;
	function ContainsValue(value : Dynamic) : Bool;
	function CopyTo(array : cs.system.Array, arrayIndex : Int) : Void;
	@:noCompletion @:skipReflection function GetEnumerator() : IDictionaryEnumerator;
	@:protected private function GetHash(key : Dynamic) : Int;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	@:protected private function KeyEquals(item : Dynamic, key : Dynamic) : Bool;
	function OnDeserialization(sender : Dynamic) : Void;
	function Remove(key : Dynamic) : Void;
	function get_Count() : Int;
	@:protected private function get_EqualityComparer() : IEqualityComparer;
	function get_IsFixedSize() : Bool;
	function get_IsReadOnly() : Bool;
	function get_IsSynchronized() : Bool;
	function get_Item(key : Dynamic) : Dynamic;
	function get_Keys() : ICollection;
	function get_SyncRoot() : Dynamic;
	function get_Values() : ICollection;
	@:protected private function get_comparer() : IComparer;
	@:protected private function get_hcp() : IHashCodeProvider;
	function set_Item(key : Dynamic, value : Dynamic) : Void;
	@:protected private function set_comparer(value : IComparer) : IComparer;
	@:protected private function set_hcp(value : IHashCodeProvider) : IHashCodeProvider;
	static function Synchronized(table : Hashtable) : Hashtable;
}
