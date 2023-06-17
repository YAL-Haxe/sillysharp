package cs.system.reflection;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Reflection.MethodInfo") extern class MethodInfo extends MethodBase implements cs.system.runtime.interopservices._MethodInfo {
	var MemberType(get,never) : MemberTypes;
	var ReturnParameter(get,never) : ParameterInfo;
	var ReturnType(get,never) : cs.system.Type;
	var ReturnTypeCustomAttributes(get,never) : ICustomAttributeProvider;
	@:protected private function new() : Void;
	@:overload(function(delegateType : cs.system.Type) : cs.system.Delegate {})
	function CreateDelegate(delegateType : cs.system.Type, target : Dynamic) : cs.system.Delegate;
	function GetBaseDefinition() : MethodInfo;
	function GetGenericArguments() : cs.NativeArray<cs.system.Type>;
	function GetGenericMethodDefinition() : MethodInfo;
	function MakeGenericMethod(typeArguments : cs.NativeArray<cs.system.Type>) : MethodInfo;
	function get_MemberType() : MemberTypes;
	function get_ReturnParameter() : ParameterInfo;
	function get_ReturnType() : cs.system.Type;
	function get_ReturnTypeCustomAttributes() : ICustomAttributeProvider;
	static function op_Equality(left : MethodInfo, right : MethodInfo) : Bool;
	static function op_Inequality(left : MethodInfo, right : MethodInfo) : Bool;
}
