package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.RuntimeFieldHandle") extern final class RuntimeFieldHandle extends ValueType implements cs.system.runtime.serialization.ISerializable {
	var Value(get,never) : IntPtr;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function get_Value() : IntPtr;
	static function op_Equality(left : RuntimeFieldHandle, right : RuntimeFieldHandle) : Bool;
	static function op_Inequality(left : RuntimeFieldHandle, right : RuntimeFieldHandle) : Bool;
}
