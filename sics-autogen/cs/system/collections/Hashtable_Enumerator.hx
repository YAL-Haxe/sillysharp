package cs.system.collections;

@:nativeGen @:libType @:csNative @:native("System.Collections.Hashtable.Enumerator") extern final class Hashtable_Enumerator implements IDictionaryEnumerator implements IEnumerator {
	var Current(get,never) : Dynamic;
	var Entry(get,never) : DictionaryEntry;
	var Key(get,never) : Dynamic;
	var Value(get,never) : Dynamic;
	function new(host : Hashtable, mode : Hashtable_EnumeratorMode) : Void;
	function MoveNext() : Bool;
	function Reset() : Void;
	function get_Current() : Dynamic;
	function get_Entry() : DictionaryEntry;
	function get_Key() : Dynamic;
	function get_Value() : Dynamic;
}
