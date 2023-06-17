package cs.system.reflection;

@:nativeGen @:struct @:libType @:csNative @:native("System.Reflection.ParameterModifier") extern final class ParameterModifier extends cs.system.ValueType {
	function new(parameterCount : Int) : Void;
	function get_Item(index : Int) : Bool;
	function set_Item(index : Int, value : Bool) : Void;
}
