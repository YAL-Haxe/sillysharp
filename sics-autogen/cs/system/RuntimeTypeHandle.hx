package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.RuntimeTypeHandle") extern final class RuntimeTypeHandle extends ValueType implements cs.system.runtime.serialization.ISerializable {
	var Value(get,never) : IntPtr;
	function GetModuleHandle() : ModuleHandle;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function get_Value() : IntPtr;
	@:overload(function(left : RuntimeTypeHandle, right : Dynamic) : Bool {})
	static function op_Equality(left : Dynamic, right : RuntimeTypeHandle) : Bool;
	@:overload(function(left : RuntimeTypeHandle, right : Dynamic) : Bool {})
	static function op_Inequality(left : Dynamic, right : RuntimeTypeHandle) : Bool;
}
