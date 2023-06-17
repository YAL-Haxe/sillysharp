package cs.system.runtime.interopservices;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.InteropServices._FieldInfo") extern interface _FieldInfo {
	var Attributes(get,never) : cs.system.reflection.FieldAttributes;
	var DeclaringType(get,never) : cs.system.Type;
	var FieldHandle(get,never) : cs.system.RuntimeFieldHandle;
	var FieldType(get,never) : cs.system.Type;
	var IsAssembly(get,never) : Bool;
	var IsFamily(get,never) : Bool;
	var IsFamilyAndAssembly(get,never) : Bool;
	var IsFamilyOrAssembly(get,never) : Bool;
	var IsInitOnly(get,never) : Bool;
	var IsLiteral(get,never) : Bool;
	var IsNotSerialized(get,never) : Bool;
	var IsPinvokeImpl(get,never) : Bool;
	var IsPrivate(get,never) : Bool;
	var IsPublic(get,never) : Bool;
	var IsSpecialName(get,never) : Bool;
	var IsStatic(get,never) : Bool;
	var MemberType(get,never) : cs.system.reflection.MemberTypes;
	var Name(get,never) : String;
	var ReflectedType(get,never) : cs.system.Type;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetIDsOfNames(riid : cs.Ref<cs.system.Guid>, rgszNames : cs.system.IntPtr, cNames : UInt, lcid : UInt, rgDispId : cs.system.IntPtr) : Void;
	function GetType() : cs.system.Type;
	function GetTypeInfo(iTInfo : UInt, lcid : UInt, ppTInfo : cs.system.IntPtr) : Void;
	function GetTypeInfoCount(pcTInfo : cs.Out<UInt>) : Void;
	function GetValue(obj : Dynamic) : Dynamic;
	function GetValueDirect(obj : cs.system.TypedReference) : Dynamic;
	function Invoke(dispIdMember : UInt, riid : cs.Ref<cs.system.Guid>, lcid : UInt, wFlags : cs.types.Int16, pDispParams : cs.system.IntPtr, pVarResult : cs.system.IntPtr, pExcepInfo : cs.system.IntPtr, puArgErr : cs.system.IntPtr) : Void;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	@:overload(function(obj : Dynamic, value : Dynamic) : Void {})
	function SetValue(obj : Dynamic, value : Dynamic, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, culture : cs.system.globalization.CultureInfo) : Void;
	function SetValueDirect(obj : cs.system.TypedReference, value : Dynamic) : Void;
	function ToString() : String;
	function get_Attributes() : cs.system.reflection.FieldAttributes;
	function get_DeclaringType() : cs.system.Type;
	function get_FieldHandle() : cs.system.RuntimeFieldHandle;
	function get_FieldType() : cs.system.Type;
	function get_IsAssembly() : Bool;
	function get_IsFamily() : Bool;
	function get_IsFamilyAndAssembly() : Bool;
	function get_IsFamilyOrAssembly() : Bool;
	function get_IsInitOnly() : Bool;
	function get_IsLiteral() : Bool;
	function get_IsNotSerialized() : Bool;
	function get_IsPinvokeImpl() : Bool;
	function get_IsPrivate() : Bool;
	function get_IsPublic() : Bool;
	function get_IsSpecialName() : Bool;
	function get_IsStatic() : Bool;
	function get_MemberType() : cs.system.reflection.MemberTypes;
	function get_Name() : String;
	function get_ReflectedType() : cs.system.Type;
}
