package cs.system.reflection.emit;

@:nativeGen @:struct @:libType @:csNative @:native("System.Reflection.Emit.PropertyToken") extern final class PropertyToken extends cs.system.ValueType {
	var Token(get,never) : Int;
	function get_Token() : Int;
	@:readOnly static var Empty(default,never) : PropertyToken;
	static function op_Equality(a : PropertyToken, b : PropertyToken) : Bool;
	static function op_Inequality(a : PropertyToken, b : PropertyToken) : Bool;
}
