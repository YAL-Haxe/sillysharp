package cs.system;

@:nativeGen @:libType @:csNative @:native("System.AsyncCallback") extern final class Delegate_AsyncCallback extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(ar : IAsyncResult, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : Void;
	function Invoke(ar : IAsyncResult) : Void;
	static function op_Addition(arg1 : AsyncCallback, arg2 : AsyncCallback) : AsyncCallback;
	static function op_Subtraction(arg1 : AsyncCallback, arg2 : AsyncCallback) : AsyncCallback;
}
