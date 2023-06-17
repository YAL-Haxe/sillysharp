package cs.system.reflection;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Reflection.PropertyInfo") extern class PropertyInfo extends MemberInfo implements cs.system.runtime.interopservices._PropertyInfo {
	var Attributes(get,never) : PropertyAttributes;
	var CanRead(get,never) : Bool;
	var CanWrite(get,never) : Bool;
	var GetMethod(get,never) : MethodInfo;
	var IsSpecialName(get,never) : Bool;
	var MemberType(get,never) : MemberTypes;
	var PropertyType(get,never) : cs.system.Type;
	var SetMethod(get,never) : MethodInfo;
	@:protected private function new() : Void;
	@:overload(function() : cs.NativeArray<MethodInfo> {})
	function GetAccessors(nonPublic : Bool) : cs.NativeArray<MethodInfo>;
	function GetConstantValue() : Dynamic;
	@:overload(function() : MethodInfo {})
	function GetGetMethod(nonPublic : Bool) : MethodInfo;
	function GetIndexParameters() : cs.NativeArray<ParameterInfo>;
	function GetOptionalCustomModifiers() : cs.NativeArray<cs.system.Type>;
	function GetRawConstantValue() : Dynamic;
	function GetRequiredCustomModifiers() : cs.NativeArray<cs.system.Type>;
	@:overload(function() : MethodInfo {})
	function GetSetMethod(nonPublic : Bool) : MethodInfo;
	@:overload(function(obj : Dynamic, index : cs.NativeArray<Dynamic>) : Dynamic {})
	@:overload(function(obj : Dynamic, invokeAttr : BindingFlags, binder : Binder, index : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo) : Dynamic {})
	function GetValue(obj : Dynamic) : Dynamic;
	@:overload(function(obj : Dynamic, value : Dynamic, index : cs.NativeArray<Dynamic>) : Void {})
	@:overload(function(obj : Dynamic, value : Dynamic, invokeAttr : BindingFlags, binder : Binder, index : cs.NativeArray<Dynamic>, culture : cs.system.globalization.CultureInfo) : Void {})
	function SetValue(obj : Dynamic, value : Dynamic) : Void;
	function get_Attributes() : PropertyAttributes;
	function get_CanRead() : Bool;
	function get_CanWrite() : Bool;
	function get_GetMethod() : MethodInfo;
	function get_IsSpecialName() : Bool;
	function get_MemberType() : MemberTypes;
	function get_PropertyType() : cs.system.Type;
	function get_SetMethod() : MethodInfo;
	static function op_Equality(left : PropertyInfo, right : PropertyInfo) : Bool;
	static function op_Inequality(left : PropertyInfo, right : PropertyInfo) : Bool;
}
