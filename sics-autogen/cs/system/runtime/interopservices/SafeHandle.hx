package cs.system.runtime.interopservices;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.InteropServices.SafeHandle") extern class SafeHandle extends cs.system.runtime.constrainedexecution.CriticalFinalizerObject implements cs.system.IDisposable {
	var IsClosed(get,never) : Bool;
	var IsInvalid(get,never) : Bool;
	private var handle : cs.system.IntPtr;
	@:protected private function new(invalidHandleValue : cs.system.IntPtr, ownsHandle : Bool) : Void;
	function Close() : Void;
	function DangerousAddRef(success : cs.Ref<Bool>) : Void;
	function DangerousGetHandle() : cs.system.IntPtr;
	function DangerousRelease() : Void;
	@:overload(function() : Void {})
	@:protected private function Dispose(disposing : Bool) : Void;
	@:protected private function ReleaseHandle() : Bool;
	@:protected private function SetHandle(handle : cs.system.IntPtr) : Void;
	function SetHandleAsInvalid() : Void;
	function get_IsClosed() : Bool;
	function get_IsInvalid() : Bool;
}
