package microsoft.win32.safehandles;

@:nativeGen @:libType @:csNative @:native("Microsoft.Win32.SafeHandles.SafeWaitHandle") extern final class SafeWaitHandle extends SafeHandleZeroOrMinusOneIsInvalid {
	function new(existingHandle : cs.system.IntPtr, ownsHandle : Bool) : Void;
	@:protected private function ReleaseHandle() : Bool;
}
