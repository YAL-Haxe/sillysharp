package cs.system.collections.generic;

@:nativeGen @:libType @:csNative @:native("System.Collections.Generic.Dictionary`2.ShimEnumerator") extern class Dictionary_2_ShimEnumerator<T0,T1> implements cs.system.collections.IDictionaryEnumerator implements cs.system.collections.IEnumerator {
	var Current(get,never) : Dynamic;
	var Entry(get,never) : cs.system.collections.DictionaryEntry;
	var Key(get,never) : Dynamic;
	var Value(get,never) : Dynamic;
	function new(host : Dictionary_2<T0,T1>) : Void;
	function Dispose() : Void;
	function MoveNext() : Bool;
	function Reset() : Void;
	function get_Current() : Dynamic;
	function get_Entry() : cs.system.collections.DictionaryEntry;
	function get_Key() : Dynamic;
	function get_Value() : Dynamic;
}
