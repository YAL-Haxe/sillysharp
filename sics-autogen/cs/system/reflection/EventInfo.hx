package cs.system.reflection;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Reflection.EventInfo") extern class EventInfo extends MemberInfo implements cs.system.runtime.interopservices._EventInfo {
	var AddMethod(get,never) : MethodInfo;
	var Attributes(get,never) : EventAttributes;
	var EventHandlerType(get,never) : cs.system.Type;
	var IsMulticast(get,never) : Bool;
	var IsSpecialName(get,never) : Bool;
	var MemberType(get,never) : MemberTypes;
	var RaiseMethod(get,never) : MethodInfo;
	var RemoveMethod(get,never) : MethodInfo;
	@:protected private function new() : Void;
	function AddEventHandler(target : Dynamic, handler : cs.system.Delegate) : Void;
	@:overload(function() : MethodInfo {})
	function GetAddMethod(nonPublic : Bool) : MethodInfo;
	@:overload(function(nonPublic : Bool) : cs.NativeArray<MethodInfo> {})
	function GetOtherMethods() : cs.NativeArray<MethodInfo>;
	@:overload(function() : MethodInfo {})
	function GetRaiseMethod(nonPublic : Bool) : MethodInfo;
	@:overload(function() : MethodInfo {})
	function GetRemoveMethod(nonPublic : Bool) : MethodInfo;
	function RemoveEventHandler(target : Dynamic, handler : cs.system.Delegate) : Void;
	function get_AddMethod() : MethodInfo;
	function get_Attributes() : EventAttributes;
	function get_EventHandlerType() : cs.system.Type;
	function get_IsMulticast() : Bool;
	function get_IsSpecialName() : Bool;
	function get_MemberType() : MemberTypes;
	function get_RaiseMethod() : MethodInfo;
	function get_RemoveMethod() : MethodInfo;
	static function op_Equality(left : EventInfo, right : EventInfo) : Bool;
	static function op_Inequality(left : EventInfo, right : EventInfo) : Bool;
}
