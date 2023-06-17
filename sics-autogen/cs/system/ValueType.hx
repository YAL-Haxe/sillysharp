package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.ValueType") extern class ValueType {
	@:protected private function new() : Void;
	function ToString() : String;
}
