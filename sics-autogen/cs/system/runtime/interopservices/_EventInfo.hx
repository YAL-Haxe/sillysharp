package cs.system.runtime.interopservices;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.InteropServices._EventInfo") extern interface _EventInfo {
	var Attributes(get,never) : cs.system.reflection.EventAttributes;
	var DeclaringType(get,never) : cs.system.Type;
	var EventHandlerType(get,never) : cs.system.Type;
	var IsMulticast(get,never) : Bool;
	var IsSpecialName(get,never) : Bool;
	var MemberType(get,never) : cs.system.reflection.MemberTypes;
	var Name(get,never) : String;
	var ReflectedType(get,never) : cs.system.Type;
	function AddEventHandler(target : Dynamic, handler : cs.system.Delegate) : Void;
	@:overload(function() : cs.system.reflection.MethodInfo {})
	function GetAddMethod(nonPublic : Bool) : cs.system.reflection.MethodInfo;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetIDsOfNames(riid : cs.Ref<cs.system.Guid>, rgszNames : cs.system.IntPtr, cNames : UInt, lcid : UInt, rgDispId : cs.system.IntPtr) : Void;
	@:overload(function() : cs.system.reflection.MethodInfo {})
	function GetRaiseMethod(nonPublic : Bool) : cs.system.reflection.MethodInfo;
	@:overload(function() : cs.system.reflection.MethodInfo {})
	function GetRemoveMethod(nonPublic : Bool) : cs.system.reflection.MethodInfo;
	function GetType() : cs.system.Type;
	function GetTypeInfo(iTInfo : UInt, lcid : UInt, ppTInfo : cs.system.IntPtr) : Void;
	function GetTypeInfoCount(pcTInfo : cs.Out<UInt>) : Void;
	function Invoke(dispIdMember : UInt, riid : cs.Ref<cs.system.Guid>, lcid : UInt, wFlags : cs.types.Int16, pDispParams : cs.system.IntPtr, pVarResult : cs.system.IntPtr, pExcepInfo : cs.system.IntPtr, puArgErr : cs.system.IntPtr) : Void;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	function RemoveEventHandler(target : Dynamic, handler : cs.system.Delegate) : Void;
	function ToString() : String;
	function get_Attributes() : cs.system.reflection.EventAttributes;
	function get_DeclaringType() : cs.system.Type;
	function get_EventHandlerType() : cs.system.Type;
	function get_IsMulticast() : Bool;
	function get_IsSpecialName() : Bool;
	function get_MemberType() : cs.system.reflection.MemberTypes;
	function get_Name() : String;
	function get_ReflectedType() : cs.system.Type;
}
