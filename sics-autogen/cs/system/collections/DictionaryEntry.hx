package cs.system.collections;

@:nativeGen @:struct @:libType @:csNative @:native("System.Collections.DictionaryEntry") extern final class DictionaryEntry extends cs.system.ValueType {
	var Key(get,set) : Dynamic;
	var Value(get,set) : Dynamic;
	function new(key : Dynamic, value : Dynamic) : Void;
	function get_Key() : Dynamic;
	function get_Value() : Dynamic;
	function set_Key(value : Dynamic) : Dynamic;
	function set_Value(value : Dynamic) : Dynamic;
}
