package cs.system;

@:nativeGen @:libType @:csNative @:native("System.ConsoleCancelEventHandler") extern final class Delegate_ConsoleCancelEventHandler extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(sender : Dynamic, e : ConsoleCancelEventArgs, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : Void;
	function Invoke(sender : Dynamic, e : ConsoleCancelEventArgs) : Void;
	static function op_Addition(arg1 : ConsoleCancelEventHandler, arg2 : ConsoleCancelEventHandler) : ConsoleCancelEventHandler;
	static function op_Subtraction(arg1 : ConsoleCancelEventHandler, arg2 : ConsoleCancelEventHandler) : ConsoleCancelEventHandler;
}
