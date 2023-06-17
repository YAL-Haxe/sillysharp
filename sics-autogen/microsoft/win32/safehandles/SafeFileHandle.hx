package microsoft.win32.safehandles;

@:nativeGen @:libType @:csNative @:native("Microsoft.Win32.SafeHandles.SafeFileHandle") extern final class SafeFileHandle extends SafeHandleZeroOrMinusOneIsInvalid {
	function new(preexistingHandle : cs.system.IntPtr, ownsHandle : Bool) : Void;
	@:protected private function ReleaseHandle() : Bool;
}
