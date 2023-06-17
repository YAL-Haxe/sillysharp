package cs.system.reflection.emit;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Emit.MethodBuilder") extern final class MethodBuilder extends cs.system.reflection.MethodInfo implements cs.system.runtime.interopservices._MethodBuilder {
	var Attributes(get,never) : cs.system.reflection.MethodAttributes;
	var CallingConvention(get,never) : cs.system.reflection.CallingConventions;
	var ContainsGenericParameters(get,never) : Bool;
	var DeclaringType(get,never) : cs.system.Type;
	var InitLocals(get,set) : Bool;
	var IsGenericMethod(get,never) : Bool;
	var IsGenericMethodDefinition(get,never) : Bool;
	var MethodHandle(get,never) : cs.system.RuntimeMethodHandle;
	var Module(get,never) : cs.system.reflection.Module;
	var Name(get,never) : String;
	var ReflectedType(get,never) : cs.system.Type;
	var ReturnParameter(get,never) : cs.system.reflection.ParameterInfo;
	var ReturnType(get,never) : cs.system.Type;
	var ReturnTypeCustomAttributes(get,never) : cs.system.reflection.ICustomAttributeProvider;
	var Signature(get,never) : String;
	function AddDeclarativeSecurity(action : cs.system.security.permissions.SecurityAction, pset : cs.system.security.PermissionSet) : Void;
	function CreateMethodBody(il : cs.NativeArray<cs.types.UInt8>, count : Int) : Void;
	function DefineGenericParameters(names : cs.NativeArray<String>) : cs.NativeArray<GenericTypeParameterBuilder>;
	function DefineParameter(position : Int, attributes : cs.system.reflection.ParameterAttributes, strParamName : String) : ParameterBuilder;
	function GetBaseDefinition() : cs.system.reflection.MethodInfo;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetGenericArguments() : cs.NativeArray<cs.system.Type>;
	function GetGenericMethodDefinition() : cs.system.reflection.MethodInfo;
	@:overload(function() : ILGenerator {})
	function GetILGenerator(size : Int) : ILGenerator;
	function GetMethodImplementationFlags() : cs.system.reflection.MethodImplAttributes;
	function GetModule() : cs.system.reflection.Module;
	function GetParameters() : cs.NativeArray<cs.system.reflection.ParameterInfo>;
	function GetToken() : MethodToken;
	@:noCompletion @:skipReflection function Invoke(obj : Dynamic, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, parameters : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo) : Dynamic;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	function MakeGenericMethod(typeArguments : cs.NativeArray<cs.system.Type>) : cs.system.reflection.MethodInfo;
	@:overload(function(customBuilder : CustomAttributeBuilder) : Void {})
	function SetCustomAttribute(con : cs.system.reflection.ConstructorInfo, binaryAttribute : cs.NativeArray<cs.types.UInt8>) : Void;
	function SetImplementationFlags(attributes : cs.system.reflection.MethodImplAttributes) : Void;
	function SetMarshal(unmanagedMarshal : UnmanagedMarshal) : Void;
	function SetParameters(parameterTypes : cs.NativeArray<cs.system.Type>) : Void;
	function SetReturnType(returnType : cs.system.Type) : Void;
	function SetSignature(returnType : cs.system.Type, returnTypeRequiredCustomModifiers : cs.NativeArray<cs.system.Type>, returnTypeOptionalCustomModifiers : cs.NativeArray<cs.system.Type>, parameterTypes : cs.NativeArray<cs.system.Type>, parameterTypeRequiredCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>, parameterTypeOptionalCustomModifiers : cs.NativeArray<cs.NativeArray<cs.system.Type>>) : Void;
	function SetSymCustomAttribute(name : String, data : cs.NativeArray<cs.types.UInt8>) : Void;
	function ToString() : String;
	function get_Attributes() : cs.system.reflection.MethodAttributes;
	function get_CallingConvention() : cs.system.reflection.CallingConventions;
	function get_ContainsGenericParameters() : Bool;
	function get_DeclaringType() : cs.system.Type;
	function get_InitLocals() : Bool;
	function get_IsGenericMethod() : Bool;
	function get_IsGenericMethodDefinition() : Bool;
	function get_MethodHandle() : cs.system.RuntimeMethodHandle;
	function get_Module() : cs.system.reflection.Module;
	function get_Name() : String;
	function get_ReflectedType() : cs.system.Type;
	function get_ReturnParameter() : cs.system.reflection.ParameterInfo;
	function get_ReturnType() : cs.system.Type;
	function get_ReturnTypeCustomAttributes() : cs.system.reflection.ICustomAttributeProvider;
	function get_Signature() : String;
	function set_InitLocals(value : Bool) : Bool;
}
