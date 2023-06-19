package cs.system.collections.generic;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Collections.Generic.IDictionary") extern interface IDictionary_2<T0,T1> extends ICollection_1<KeyValuePair_2<T0,T1>> extends IEnumerable_1<KeyValuePair_2<T0,T1>> extends cs.system.collections.IEnumerable extends ArrayAccess<T1> {
	var Keys(get,never) : ICollection_1<T0>;
	var Values(get,never) : ICollection_1<T1>;
	function Add(key : T0, value : T1) : Void;
	function ContainsKey(key : T0) : Bool;
	function Remove(key : T0) : Bool;
	function TryGetValue(key : T0, value : cs.Out<T1>) : Bool;
	function get_Item(key : T0) : T1;
	function get_Keys() : ICollection_1<T0>;
	function get_Values() : ICollection_1<T1>;
	function set_Item(key : T0, value : T1) : Void;
}
