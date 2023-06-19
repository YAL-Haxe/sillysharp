package cs.system.collections.generic;

@:nativeGen @:struct @:libType @:csNative @:native("System.Collections.Generic.KeyValuePair") extern final class KeyValuePair_2<T0,T1> extends cs.system.ValueType {
	var Key(get,never) : T0;
	var Value(get,never) : T1;
	function new(key : T0, value : T1) : Void;
	function ToString() : String;
	function get_Key() : T0;
	function get_Value() : T1;
}
