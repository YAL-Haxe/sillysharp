package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Object") extern class Object {
	function new() : Void;
	function GetType() : Type;
	@:protected private function MemberwiseClone() : Dynamic;
	function ToString() : String;
	@:native("Equals") static function _Equals(objA : Dynamic, objB : Dynamic) : Bool;
	static function ReferenceEquals(objA : Dynamic, objB : Dynamic) : Bool;
}
