package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.RuntimeMethodHandle") extern final class RuntimeMethodHandle extends ValueType implements cs.system.runtime.serialization.ISerializable {
	var Value(get,never) : IntPtr;
	function GetFunctionPointer() : IntPtr;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function get_Value() : IntPtr;
	static function op_Equality(left : RuntimeMethodHandle, right : RuntimeMethodHandle) : Bool;
	static function op_Inequality(left : RuntimeMethodHandle, right : RuntimeMethodHandle) : Bool;
}
