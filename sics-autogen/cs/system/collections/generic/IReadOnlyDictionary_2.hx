package cs.system.collections.generic;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Collections.Generic.IReadOnlyDictionary") extern interface IReadOnlyDictionary_2<T0,T1> extends IReadOnlyCollection_1<KeyValuePair_2<T0,T1>> extends IEnumerable_1<KeyValuePair_2<T0,T1>> extends cs.system.collections.IEnumerable extends ArrayAccess<T1> {
	var Keys(get,never) : IEnumerable_1<T0>;
	var Values(get,never) : IEnumerable_1<T1>;
	function ContainsKey(key : T0) : Bool;
	function TryGetValue(key : T0, value : cs.Out<T1>) : Bool;
	function get_Item(key : T0) : T1;
	function get_Keys() : IEnumerable_1<T0>;
	function get_Values() : IEnumerable_1<T1>;
}
