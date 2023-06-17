package cs.system.threading;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Threading.WaitHandle") extern class WaitHandle extends cs.system.MarshalByRefObject implements cs.system.IDisposable {
	var Handle(get,set) : cs.system.IntPtr;
	var SafeWaitHandle(get,set) : microsoft.win32.safehandles.SafeWaitHandle;
	@:protected private function new() : Void;
	function Close() : Void;
	@:overload(function() : Void {})
	@:protected private function Dispose(explicitDisposing : Bool) : Void;
	@:overload(function() : Bool {})
	@:overload(function(timeout : cs.system.TimeSpan, exitContext : Bool) : Bool {})
	@:overload(function(timeout : cs.system.TimeSpan) : Bool {})
	@:overload(function(millisecondsTimeout : Int) : Bool {})
	function WaitOne(millisecondsTimeout : Int, exitContext : Bool) : Bool;
	function get_Handle() : cs.system.IntPtr;
	function get_SafeWaitHandle() : microsoft.win32.safehandles.SafeWaitHandle;
	function set_Handle(value : cs.system.IntPtr) : cs.system.IntPtr;
	function set_SafeWaitHandle(value : microsoft.win32.safehandles.SafeWaitHandle) : microsoft.win32.safehandles.SafeWaitHandle;
	@:readOnly private static var InvalidHandle(default,never) : cs.system.IntPtr;
	@:readOnly static var WaitTimeout(default,never) : Int;
	@:overload(function(toSignal : WaitHandle, toWaitOn : WaitHandle) : Bool {})
	@:overload(function(toSignal : WaitHandle, toWaitOn : WaitHandle, timeout : cs.system.TimeSpan, exitContext : Bool) : Bool {})
	static function SignalAndWait(toSignal : WaitHandle, toWaitOn : WaitHandle, millisecondsTimeout : Int, exitContext : Bool) : Bool;
	@:overload(function(waitHandles : cs.NativeArray<WaitHandle>) : Bool {})
	@:overload(function(waitHandles : cs.NativeArray<WaitHandle>, timeout : cs.system.TimeSpan) : Bool {})
	@:overload(function(waitHandles : cs.NativeArray<WaitHandle>, millisecondsTimeout : Int) : Bool {})
	@:overload(function(waitHandles : cs.NativeArray<WaitHandle>, timeout : cs.system.TimeSpan, exitContext : Bool) : Bool {})
	static function WaitAll(waitHandles : cs.NativeArray<WaitHandle>, millisecondsTimeout : Int, exitContext : Bool) : Bool;
	@:overload(function(waitHandles : cs.NativeArray<WaitHandle>) : Int {})
	@:overload(function(waitHandles : cs.NativeArray<WaitHandle>, timeout : cs.system.TimeSpan, exitContext : Bool) : Int {})
	@:overload(function(waitHandles : cs.NativeArray<WaitHandle>, millisecondsTimeout : Int) : Int {})
	@:overload(function(waitHandles : cs.NativeArray<WaitHandle>, timeout : cs.system.TimeSpan) : Int {})
	static function WaitAny(waitHandles : cs.NativeArray<WaitHandle>, millisecondsTimeout : Int, exitContext : Bool) : Int;
}
