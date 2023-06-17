package cs.system.reflection.emit;

@:nativeGen @:struct @:libType @:csNative @:native("System.Reflection.Emit.MethodToken") extern final class MethodToken extends cs.system.ValueType {
	var Token(get,never) : Int;
	function get_Token() : Int;
	@:readOnly static var Empty(default,never) : MethodToken;
	static function op_Equality(a : MethodToken, b : MethodToken) : Bool;
	static function op_Inequality(a : MethodToken, b : MethodToken) : Bool;
}
