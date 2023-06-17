package cs.system.reflection.emit;

@:nativeGen @:struct @:libType @:csNative @:native("System.Reflection.Emit.SignatureToken") extern final class SignatureToken extends cs.system.ValueType {
	var Token(get,never) : Int;
	function get_Token() : Int;
	@:readOnly static var Empty(default,never) : SignatureToken;
	static function op_Equality(a : SignatureToken, b : SignatureToken) : Bool;
	static function op_Inequality(a : SignatureToken, b : SignatureToken) : Bool;
}
