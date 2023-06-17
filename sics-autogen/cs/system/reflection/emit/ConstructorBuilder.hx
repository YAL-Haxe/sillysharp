package cs.system.reflection.emit;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Emit.ConstructorBuilder") extern final class ConstructorBuilder extends cs.system.reflection.ConstructorInfo implements cs.system.runtime.interopservices._ConstructorBuilder {
	var Attributes(get,never) : cs.system.reflection.MethodAttributes;
	var CallingConvention(get,never) : cs.system.reflection.CallingConventions;
	var DeclaringType(get,never) : cs.system.Type;
	var InitLocals(get,set) : Bool;
	var MethodHandle(get,never) : cs.system.RuntimeMethodHandle;
	var Module(get,never) : cs.system.reflection.Module;
	var Name(get,never) : String;
	var ReflectedType(get,never) : cs.system.Type;
	var ReturnType(get,never) : cs.system.Type;
	var Signature(get,never) : String;
	function AddDeclarativeSecurity(action : cs.system.security.permissions.SecurityAction, pset : cs.system.security.PermissionSet) : Void;
	function DefineParameter(iSequence : Int, attributes : cs.system.reflection.ParameterAttributes, strParamName : String) : ParameterBuilder;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	@:overload(function() : ILGenerator {})
	function GetILGenerator(streamSize : Int) : ILGenerator;
	function GetMethodImplementationFlags() : cs.system.reflection.MethodImplAttributes;
	function GetModule() : cs.system.reflection.Module;
	function GetParameters() : cs.NativeArray<cs.system.reflection.ParameterInfo>;
	function GetToken() : MethodToken;
	@:overload(function(obj : Dynamic, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, parameters : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo) : Dynamic {})
	@:noCompletion @:skipReflection function Invoke(invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, parameters : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo) : Dynamic;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	@:overload(function(customBuilder : CustomAttributeBuilder) : Void {})
	function SetCustomAttribute(con : cs.system.reflection.ConstructorInfo, binaryAttribute : cs.NativeArray<cs.types.UInt8>) : Void;
	function SetImplementationFlags(attributes : cs.system.reflection.MethodImplAttributes) : Void;
	function SetSymCustomAttribute(name : String, data : cs.NativeArray<cs.types.UInt8>) : Void;
	function ToString() : String;
	function get_Attributes() : cs.system.reflection.MethodAttributes;
	function get_CallingConvention() : cs.system.reflection.CallingConventions;
	function get_DeclaringType() : cs.system.Type;
	function get_InitLocals() : Bool;
	function get_MethodHandle() : cs.system.RuntimeMethodHandle;
	function get_Module() : cs.system.reflection.Module;
	function get_Name() : String;
	function get_ReflectedType() : cs.system.Type;
	function get_ReturnType() : cs.system.Type;
	function get_Signature() : String;
	function set_InitLocals(value : Bool) : Bool;
}
