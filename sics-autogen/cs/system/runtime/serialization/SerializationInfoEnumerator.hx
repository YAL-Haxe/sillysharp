package cs.system.runtime.serialization;

@:nativeGen @:libType @:csNative @:native("System.Runtime.Serialization.SerializationInfoEnumerator") extern final class SerializationInfoEnumerator implements cs.system.collections.IEnumerator {
	@:noCompletion @:skipReflection var Current(get,never) : SerializationEntry;
	var Name(get,never) : String;
	var ObjectType(get,never) : cs.system.Type;
	var Value(get,never) : Dynamic;
	function MoveNext() : Bool;
	function Reset() : Void;
	@:noCompletion @:skipReflection function get_Current() : SerializationEntry;
	function get_Name() : String;
	function get_ObjectType() : cs.system.Type;
	function get_Value() : Dynamic;
}
