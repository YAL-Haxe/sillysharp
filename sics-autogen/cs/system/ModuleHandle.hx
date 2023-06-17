package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.ModuleHandle") extern final class ModuleHandle extends ValueType {
	var MDStreamVersion(get,never) : Int;
	function GetRuntimeFieldHandleFromMetadataToken(fieldToken : Int) : RuntimeFieldHandle;
	function GetRuntimeMethodHandleFromMetadataToken(methodToken : Int) : RuntimeMethodHandle;
	function GetRuntimeTypeHandleFromMetadataToken(typeToken : Int) : RuntimeTypeHandle;
	@:overload(function(fieldToken : Int) : RuntimeFieldHandle {})
	function ResolveFieldHandle(fieldToken : Int, typeInstantiationContext : cs.NativeArray<RuntimeTypeHandle>, methodInstantiationContext : cs.NativeArray<RuntimeTypeHandle>) : RuntimeFieldHandle;
	@:overload(function(methodToken : Int) : RuntimeMethodHandle {})
	function ResolveMethodHandle(methodToken : Int, typeInstantiationContext : cs.NativeArray<RuntimeTypeHandle>, methodInstantiationContext : cs.NativeArray<RuntimeTypeHandle>) : RuntimeMethodHandle;
	@:overload(function(typeToken : Int) : RuntimeTypeHandle {})
	function ResolveTypeHandle(typeToken : Int, typeInstantiationContext : cs.NativeArray<RuntimeTypeHandle>, methodInstantiationContext : cs.NativeArray<RuntimeTypeHandle>) : RuntimeTypeHandle;
	function get_MDStreamVersion() : Int;
	@:readOnly static var EmptyHandle(default,never) : ModuleHandle;
	static function op_Equality(left : ModuleHandle, right : ModuleHandle) : Bool;
	static function op_Inequality(left : ModuleHandle, right : ModuleHandle) : Bool;
}
