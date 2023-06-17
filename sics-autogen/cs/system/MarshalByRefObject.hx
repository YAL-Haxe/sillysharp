package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.MarshalByRefObject") extern class MarshalByRefObject {
	@:protected private function new() : Void;
	function CreateObjRef(requestedType : Type) : cs.system.runtime.remoting.ObjRef;
	function GetLifetimeService() : Dynamic;
	function InitializeLifetimeService() : Dynamic;
	@:protected private function MemberwiseClone(cloneIdentity : Bool) : MarshalByRefObject;
}
