package cs.system.runtime.remoting;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.Remoting.IObjectHandle") extern interface IObjectHandle {
	function Unwrap() : Dynamic;
}
