package cs.system;

@:nativeGen @:libType @:csNative @:native("System.UnhandledExceptionEventHandler") extern final class Delegate_UnhandledExceptionEventHandler extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(sender : Dynamic, e : UnhandledExceptionEventArgs, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : Void;
	function Invoke(sender : Dynamic, e : UnhandledExceptionEventArgs) : Void;
	static function op_Addition(arg1 : UnhandledExceptionEventHandler, arg2 : UnhandledExceptionEventHandler) : UnhandledExceptionEventHandler;
	static function op_Subtraction(arg1 : UnhandledExceptionEventHandler, arg2 : UnhandledExceptionEventHandler) : UnhandledExceptionEventHandler;
}
