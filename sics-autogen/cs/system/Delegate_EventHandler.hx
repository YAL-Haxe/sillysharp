package cs.system;

@:nativeGen @:libType @:csNative @:native("System.EventHandler") extern final class Delegate_EventHandler extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(sender : Dynamic, e : EventArgs, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : Void;
	function Invoke(sender : Dynamic, e : EventArgs) : Void;
	static function op_Addition(arg1 : EventHandler, arg2 : EventHandler) : EventHandler;
	static function op_Subtraction(arg1 : EventHandler, arg2 : EventHandler) : EventHandler;
}
