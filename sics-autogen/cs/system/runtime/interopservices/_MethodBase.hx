package cs.system.runtime.interopservices;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.InteropServices._MethodBase") extern interface _MethodBase {
	var Attributes(get,never) : cs.system.reflection.MethodAttributes;
	var CallingConvention(get,never) : cs.system.reflection.CallingConventions;
	var DeclaringType(get,never) : cs.system.Type;
	var IsAbstract(get,never) : Bool;
	var IsAssembly(get,never) : Bool;
	var IsConstructor(get,never) : Bool;
	var IsFamily(get,never) : Bool;
	var IsFamilyAndAssembly(get,never) : Bool;
	var IsFamilyOrAssembly(get,never) : Bool;
	var IsFinal(get,never) : Bool;
	var IsHideBySig(get,never) : Bool;
	var IsPrivate(get,never) : Bool;
	var IsPublic(get,never) : Bool;
	var IsSpecialName(get,never) : Bool;
	var IsStatic(get,never) : Bool;
	var IsVirtual(get,never) : Bool;
	var MemberType(get,never) : cs.system.reflection.MemberTypes;
	var MethodHandle(get,never) : cs.system.RuntimeMethodHandle;
	var Name(get,never) : String;
	var ReflectedType(get,never) : cs.system.Type;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetIDsOfNames(riid : cs.Ref<cs.system.Guid>, rgszNames : cs.system.IntPtr, cNames : UInt, lcid : UInt, rgDispId : cs.system.IntPtr) : Void;
	function GetMethodImplementationFlags() : cs.system.reflection.MethodImplAttributes;
	function GetParameters() : cs.NativeArray<cs.system.reflection.ParameterInfo>;
	function GetType() : cs.system.Type;
	function GetTypeInfo(iTInfo : UInt, lcid : UInt, ppTInfo : cs.system.IntPtr) : Void;
	function GetTypeInfoCount(pcTInfo : cs.Out<UInt>) : Void;
	@:overload(function(dispIdMember : UInt, riid : cs.Ref<cs.system.Guid>, lcid : UInt, wFlags : cs.types.Int16, pDispParams : cs.system.IntPtr, pVarResult : cs.system.IntPtr, pExcepInfo : cs.system.IntPtr, puArgErr : cs.system.IntPtr) : Void {})
	@:overload(function(obj : Dynamic, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, parameters : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo) : Dynamic {})
	function Invoke(obj : Dynamic, parameters : cs.NativeArray<Dynamic>) : Dynamic;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	function ToString() : String;
	function get_Attributes() : cs.system.reflection.MethodAttributes;
	function get_CallingConvention() : cs.system.reflection.CallingConventions;
	function get_DeclaringType() : cs.system.Type;
	function get_IsAbstract() : Bool;
	function get_IsAssembly() : Bool;
	function get_IsConstructor() : Bool;
	function get_IsFamily() : Bool;
	function get_IsFamilyAndAssembly() : Bool;
	function get_IsFamilyOrAssembly() : Bool;
	function get_IsFinal() : Bool;
	function get_IsHideBySig() : Bool;
	function get_IsPrivate() : Bool;
	function get_IsPublic() : Bool;
	function get_IsSpecialName() : Bool;
	function get_IsStatic() : Bool;
	function get_IsVirtual() : Bool;
	function get_MemberType() : cs.system.reflection.MemberTypes;
	function get_MethodHandle() : cs.system.RuntimeMethodHandle;
	function get_Name() : String;
	function get_ReflectedType() : cs.system.Type;
}
