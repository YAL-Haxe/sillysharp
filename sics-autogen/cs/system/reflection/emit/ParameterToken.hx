package cs.system.reflection.emit;

@:nativeGen @:struct @:libType @:csNative @:native("System.Reflection.Emit.ParameterToken") extern final class ParameterToken extends cs.system.ValueType {
	var Token(get,never) : Int;
	function get_Token() : Int;
	@:readOnly static var Empty(default,never) : ParameterToken;
	static function op_Equality(a : ParameterToken, b : ParameterToken) : Bool;
	static function op_Inequality(a : ParameterToken, b : ParameterToken) : Bool;
}
