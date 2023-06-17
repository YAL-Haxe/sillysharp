package cs.system.collections.generic;

@:nativeGen @:libType @:csNative @:native("System.Collections.Generic.Dictionary`2") extern class Dictionary_2<T0,T1> implements IDictionary_2<T0,T1> implements cs.system.collections.IDictionary implements cs.system.runtime.serialization.ISerializable implements cs.system.runtime.serialization.IDeserializationCallback implements IReadOnlyDictionary_2<T0,T1> implements ICollection_1<KeyValuePair_2<T0,T1>> implements IEnumerable_1<KeyValuePair_2<T0,T1>> implements cs.system.collections.IEnumerable implements cs.system.collections.ICollection implements IReadOnlyCollection_1<KeyValuePair_2<T0,T1>> {
	var Comparer(get,never) : IEqualityComparer_1<T0>;
	var Count(get,never) : Int;
	@:noCompletion @:skipReflection var Keys(get,never) : Dictionary_2_KeyCollection<T0,T1>;
	@:noCompletion @:skipReflection var Values(get,never) : Dictionary_2_ValueCollection<T0,T1>;
	@:overload(function() : Void {})
	@:overload(function(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void {})
	@:overload(function(capacity : Int, comparer : IEqualityComparer_1<T0>) : Void {})
	@:overload(function(dictionary : IDictionary_2<T0,T1>, comparer : IEqualityComparer_1<T0>) : Void {})
	@:overload(function(capacity : Int) : Void {})
	@:overload(function(dictionary : IDictionary_2<T0,T1>) : Void {})
	function new(comparer : IEqualityComparer_1<T0>) : Void;
	@:noCompletion @:skipReflection function Add(key : T0, value : T1) : Void;
	function Clear() : Void;
	function ContainsKey(key : T0) : Bool;
	function ContainsValue(value : T1) : Bool;
	@:noCompletion @:skipReflection function CopyTo(array : cs.NativeArray<KeyValuePair_2<T0,T1>>, index : Int) : Void;
	@:noCompletion @:skipReflection function GetEnumerator() : Dictionary_2_Enumerator<T0,T1>;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function OnDeserialization(sender : Dynamic) : Void;
	@:noCompletion @:skipReflection function Remove(key : T0) : Bool;
	function TryGetValue(key : T0, value : cs.Out<T1>) : Bool;
	function get_Comparer() : IEqualityComparer_1<T0>;
	function get_Count() : Int;
	@:noCompletion @:skipReflection function get_Item(key : T0) : T1;
	@:noCompletion @:skipReflection function get_Keys() : Dictionary_2_KeyCollection<T0,T1>;
	@:noCompletion @:skipReflection function get_Values() : Dictionary_2_ValueCollection<T0,T1>;
	@:noCompletion @:skipReflection function set_Item(key : T0, value : T1) : Void;
}
