package cs.system.collections;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Collections.IDictionaryEnumerator") extern interface IDictionaryEnumerator extends IEnumerator {
	var Entry(get,never) : DictionaryEntry;
	var Key(get,never) : Dynamic;
	var Value(get,never) : Dynamic;
	function get_Entry() : DictionaryEntry;
	function get_Key() : Dynamic;
	function get_Value() : Dynamic;
}
