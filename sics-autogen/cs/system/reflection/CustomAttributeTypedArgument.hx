package cs.system.reflection;

@:nativeGen @:struct @:libType @:csNative @:native("System.Reflection.CustomAttributeTypedArgument") extern final class CustomAttributeTypedArgument extends cs.system.ValueType {
	var ArgumentType(get,never) : cs.system.Type;
	var Value(get,never) : Dynamic;
	@:overload(function(argumentType : cs.system.Type, value : Dynamic) : Void {})
	function new(value : Dynamic) : Void;
	function ToString() : String;
	function get_ArgumentType() : cs.system.Type;
	function get_Value() : Dynamic;
	static function op_Equality(left : CustomAttributeTypedArgument, right : CustomAttributeTypedArgument) : Bool;
	static function op_Inequality(left : CustomAttributeTypedArgument, right : CustomAttributeTypedArgument) : Bool;
}
