package cs.system.reflection;

@:nativeGen @:struct @:libType @:csNative @:native("System.Reflection.CustomAttributeNamedArgument") extern final class CustomAttributeNamedArgument extends cs.system.ValueType {
	var IsField(get,never) : Bool;
	var MemberInfo(get,never) : MemberInfo;
	var MemberName(get,never) : String;
	var TypedValue(get,never) : CustomAttributeTypedArgument;
	@:overload(function(memberInfo : MemberInfo, value : Dynamic) : Void {})
	function new(memberInfo : MemberInfo, typedArgument : CustomAttributeTypedArgument) : Void;
	function ToString() : String;
	function get_IsField() : Bool;
	function get_MemberInfo() : MemberInfo;
	function get_MemberName() : String;
	function get_TypedValue() : CustomAttributeTypedArgument;
	static function op_Equality(left : CustomAttributeNamedArgument, right : CustomAttributeNamedArgument) : Bool;
	static function op_Inequality(left : CustomAttributeNamedArgument, right : CustomAttributeNamedArgument) : Bool;
}
