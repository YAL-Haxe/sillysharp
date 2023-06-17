package cs.system.reflection.emit;

@:nativeGen @:struct @:libType @:csNative @:native("System.Reflection.Emit.EventToken") extern final class EventToken extends cs.system.ValueType {
	var Token(get,never) : Int;
	function get_Token() : Int;
	@:readOnly static var Empty(default,never) : EventToken;
	static function op_Equality(a : EventToken, b : EventToken) : Bool;
	static function op_Inequality(a : EventToken, b : EventToken) : Bool;
}
