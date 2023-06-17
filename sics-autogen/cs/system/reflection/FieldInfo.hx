package cs.system.reflection;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Reflection.FieldInfo") extern class FieldInfo extends MemberInfo implements cs.system.runtime.interopservices._FieldInfo {
	var Attributes(get,never) : FieldAttributes;
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
	var IsSecurityCritical(get,never) : Bool;
	var IsSecuritySafeCritical(get,never) : Bool;
	var IsSecurityTransparent(get,never) : Bool;
	var IsSpecialName(get,never) : Bool;
	var IsStatic(get,never) : Bool;
	var MemberType(get,never) : MemberTypes;
	@:protected private function new() : Void;
	function GetOptionalCustomModifiers() : cs.NativeArray<cs.system.Type>;
	function GetRawConstantValue() : Dynamic;
	function GetRequiredCustomModifiers() : cs.NativeArray<cs.system.Type>;
	function GetValue(obj : Dynamic) : Dynamic;
	function GetValueDirect(obj : cs.system.TypedReference) : Dynamic;
	@:overload(function(obj : Dynamic, value : Dynamic, invokeAttr : BindingFlags, binder : Binder, culture : cs.system.globalization.CultureInfo) : Void {})
	function SetValue(obj : Dynamic, value : Dynamic) : Void;
	function SetValueDirect(obj : cs.system.TypedReference, value : Dynamic) : Void;
	function get_Attributes() : FieldAttributes;
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
	function get_IsSecurityCritical() : Bool;
	function get_IsSecuritySafeCritical() : Bool;
	function get_IsSecurityTransparent() : Bool;
	function get_IsSpecialName() : Bool;
	function get_IsStatic() : Bool;
	function get_MemberType() : MemberTypes;
	@:overload(function(handle : cs.system.RuntimeFieldHandle) : FieldInfo {})
	static function GetFieldFromHandle(handle : cs.system.RuntimeFieldHandle, declaringType : cs.system.RuntimeTypeHandle) : FieldInfo;
	static function op_Equality(left : FieldInfo, right : FieldInfo) : Bool;
	static function op_Inequality(left : FieldInfo, right : FieldInfo) : Bool;
}
