package cs.system.runtime.serialization;

@:nativeGen @:struct @:libType @:csNative @:native("System.Runtime.Serialization.SerializationEntry") extern final class SerializationEntry extends cs.system.ValueType {
	var Name(get,never) : String;
	var ObjectType(get,never) : cs.system.Type;
	var Value(get,never) : Dynamic;
	function get_Name() : String;
	function get_ObjectType() : cs.system.Type;
	function get_Value() : Dynamic;
}
