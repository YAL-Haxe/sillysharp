package cs.system.reflection.emit;

@:nativeGen @:struct @:libType @:csNative @:native("System.Reflection.Emit.TypeToken") extern final class TypeToken extends cs.system.ValueType {
	var Token(get,never) : Int;
	function get_Token() : Int;
	@:readOnly static var Empty(default,never) : TypeToken;
	static function op_Equality(a : TypeToken, b : TypeToken) : Bool;
	static function op_Inequality(a : TypeToken, b : TypeToken) : Bool;
}
