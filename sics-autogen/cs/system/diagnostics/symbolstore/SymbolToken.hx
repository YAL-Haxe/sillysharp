package cs.system.diagnostics.symbolstore;

@:nativeGen @:struct @:libType @:csNative @:native("System.Diagnostics.SymbolStore.SymbolToken") extern final class SymbolToken extends cs.system.ValueType {
	function new(val : Int) : Void;
	function GetToken() : Int;
	static function op_Equality(a : SymbolToken, b : SymbolToken) : Bool;
	static function op_Inequality(a : SymbolToken, b : SymbolToken) : Bool;
}
