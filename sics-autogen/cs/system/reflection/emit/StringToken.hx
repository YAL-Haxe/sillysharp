package cs.system.reflection.emit;

@:nativeGen @:struct @:libType @:csNative @:native("System.Reflection.Emit.StringToken") extern final class StringToken extends cs.system.ValueType {
	var Token(get,never) : Int;
	function get_Token() : Int;
	static function op_Equality(a : StringToken, b : StringToken) : Bool;
	static function op_Inequality(a : StringToken, b : StringToken) : Bool;
}
