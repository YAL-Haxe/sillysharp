package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.ConsoleKeyInfo") extern final class ConsoleKeyInfo extends ValueType {
	var Key(get,never) : ConsoleKey;
	var KeyChar(get,never) : cs.types.Char16;
	var Modifiers(get,never) : ConsoleModifiers;
	function new(keyChar : cs.types.Char16, key : ConsoleKey, shift : Bool, alt : Bool, control : Bool) : Void;
	function get_Key() : ConsoleKey;
	function get_KeyChar() : cs.types.Char16;
	function get_Modifiers() : ConsoleModifiers;
	static function op_Equality(a : ConsoleKeyInfo, b : ConsoleKeyInfo) : Bool;
	static function op_Inequality(a : ConsoleKeyInfo, b : ConsoleKeyInfo) : Bool;
}
