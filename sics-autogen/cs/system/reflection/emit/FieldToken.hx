package cs.system.reflection.emit;

@:nativeGen @:struct @:libType @:csNative @:native("System.Reflection.Emit.FieldToken") extern final class FieldToken extends cs.system.ValueType {
	var Token(get,never) : Int;
	function get_Token() : Int;
	@:readOnly static var Empty(default,never) : FieldToken;
	static function op_Equality(a : FieldToken, b : FieldToken) : Bool;
	static function op_Inequality(a : FieldToken, b : FieldToken) : Bool;
}
