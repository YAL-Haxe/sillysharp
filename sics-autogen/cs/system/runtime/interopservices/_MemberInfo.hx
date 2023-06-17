package cs.system.runtime.interopservices;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.InteropServices._MemberInfo") extern interface _MemberInfo {
	var DeclaringType(get,never) : cs.system.Type;
	var MemberType(get,never) : cs.system.reflection.MemberTypes;
	var Name(get,never) : String;
	var ReflectedType(get,never) : cs.system.Type;
	@:overload(function(inherit : Bool) : cs.NativeArray<Dynamic> {})
	function GetCustomAttributes(attributeType : cs.system.Type, inherit : Bool) : cs.NativeArray<Dynamic>;
	function GetIDsOfNames(riid : cs.Ref<cs.system.Guid>, rgszNames : cs.system.IntPtr, cNames : UInt, lcid : UInt, rgDispId : cs.system.IntPtr) : Void;
	function GetType() : cs.system.Type;
	function GetTypeInfo(iTInfo : UInt, lcid : UInt, ppTInfo : cs.system.IntPtr) : Void;
	function GetTypeInfoCount(pcTInfo : cs.Out<UInt>) : Void;
	function Invoke(dispIdMember : UInt, riid : cs.Ref<cs.system.Guid>, lcid : UInt, wFlags : cs.types.Int16, pDispParams : cs.system.IntPtr, pVarResult : cs.system.IntPtr, pExcepInfo : cs.system.IntPtr, puArgErr : cs.system.IntPtr) : Void;
	function IsDefined(attributeType : cs.system.Type, inherit : Bool) : Bool;
	function ToString() : String;
	function get_DeclaringType() : cs.system.Type;
	function get_MemberType() : cs.system.reflection.MemberTypes;
	function get_Name() : String;
	function get_ReflectedType() : cs.system.Type;
}
