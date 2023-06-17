package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.ICloneable") extern interface ICloneable {
	function Clone() : Dynamic;
}
