package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.Nullable") extern final class Nullable_1<T0> extends ValueType {
	var HasValue(get,never) : Bool;
	var Value(get,never) : T0;
	function new(value : T0) : Void;
	@:overload(function() : T0 {})
	function GetValueOrDefault(defaultValue : T0) : T0;
	function ToString() : String;
	function get_HasValue() : Bool;
	function get_Value() : T0;
	static function op_Explicit(value : Nullable_1<Dynamic>) : Dynamic;
	static function op_Implicit(value : Dynamic) : Nullable_1<Dynamic>;
}
