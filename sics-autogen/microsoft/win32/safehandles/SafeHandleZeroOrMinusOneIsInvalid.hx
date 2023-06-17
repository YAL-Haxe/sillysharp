package microsoft.win32.safehandles;

@:nativeGen @:abstract @:libType @:csNative @:native("Microsoft.Win32.SafeHandles.SafeHandleZeroOrMinusOneIsInvalid") extern class SafeHandleZeroOrMinusOneIsInvalid extends cs.system.runtime.interopservices.SafeHandle implements cs.system.IDisposable {
	var IsInvalid(get,never) : Bool;
	@:protected private function new(ownsHandle : Bool) : Void;
	function get_IsInvalid() : Bool;
}
