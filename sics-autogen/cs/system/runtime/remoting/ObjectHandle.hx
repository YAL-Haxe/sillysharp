package cs.system.runtime.remoting;

@:nativeGen @:libType @:csNative @:native("System.Runtime.Remoting.ObjectHandle") extern class ObjectHandle extends cs.system.MarshalByRefObject implements IObjectHandle {
	function new(o : Dynamic) : Void;
	function InitializeLifetimeService() : Dynamic;
	function Unwrap() : Dynamic;
}
