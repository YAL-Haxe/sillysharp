package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Random") extern class Random {
	@:overload(function() : Void {})
	function new(Seed : Int) : Void;
	@:overload(function(minValue : Int, maxValue : Int) : Int {})
	@:overload(function() : Int {})
	function Next(maxValue : Int) : Int;
	function NextBytes(buffer : cs.NativeArray<cs.types.UInt8>) : Void;
	function NextDouble() : Float;
	@:protected private function Sample() : Float;
}
