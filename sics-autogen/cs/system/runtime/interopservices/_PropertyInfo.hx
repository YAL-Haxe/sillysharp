package cs.system.runtime.interopservices;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.InteropServices._PropertyInfo") extern interface _PropertyInfo {
	var Attributes(get,never) : cs.system.reflection.PropertyAttributes;
	var CanRead(get,never) : Bool;
	var CanWrite(get,never) : Bool;
	var DeclaringType(get,never) : cs.system.Type;
	var IsSpecialName(get,never) : Bool;
	var MemberType(get,never) : cs.system.reflection.MemberTypes;
	var Name(get,never) : String;
	var PropertyType(get,never) : cs.system.Type;
	var ReflectedType(get,never) : cs.system.Type;
	@:overload(function() : cs.NativeArray<cs.system.reflection.MethodInfo> {})
	function GetAccessors(nonPublic : Bool) : cs.NativeArray<cs.system.reflection.MethodInfo>;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	@:overload(function() : cs.system.reflection.MethodInfo {})
	function GetGetMethod(nonPublic : Bool) : cs.system.reflection.MethodInfo;
	function GetIDsOfNames(riid : cs.Ref<cs.system.Guid>, rgszNames : cs.system.IntPtr, cNames : UInt, lcid : UInt, rgDispId : cs.system.IntPtr) : Void;
	function GetIndexParameters() : cs.NativeArray<cs.system.reflection.ParameterInfo>;
	@:overload(function() : cs.system.reflection.MethodInfo {})
	function GetSetMethod(nonPublic : Bool) : cs.system.reflection.MethodInfo;
	function GetType() : cs.system.Type;
	function GetTypeInfo(iTInfo : UInt, lcid : UInt, ppTInfo : cs.system.IntPtr) : Void;
	function GetTypeInfoCount(pcTInfo : cs.Out<UInt>) : Void;
	@:overload(function(obj : Dynamic, index : cs.NativeArray<Dynamic>) : Dynamic {})
	function GetValue(obj : Dynamic, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, index : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo) : Dynamic;
	function Invoke(dispIdMember : UInt, riid : cs.Ref<cs.system.Guid>, lcid : UInt, wFlags : cs.types.Int16, pDispParams : cs.system.IntPtr, pVarResult : cs.system.IntPtr, pExcepInfo : cs.system.IntPtr, puArgErr : cs.system.IntPtr) : Void;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	@:overload(function(obj : Dynamic, value : Dynamic, index : cs.NativeArray<Dynamic>) : Void {})
	function SetValue(obj : Dynamic, value : Dynamic, invokeAttr : cs.system.reflection.BindingFlags, binder : cs.system.reflection.Binder, index : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo) : Void;
	function ToString() : String;
	function get_Attributes() : cs.system.reflection.PropertyAttributes;
	function get_CanRead() : Bool;
	function get_CanWrite() : Bool;
	function get_DeclaringType() : cs.system.Type;
	function get_IsSpecialName() : Bool;
	function get_MemberType() : cs.system.reflection.MemberTypes;
	function get_Name() : String;
	function get_PropertyType() : cs.system.Type;
	function get_ReflectedType() : cs.system.Type;
}
