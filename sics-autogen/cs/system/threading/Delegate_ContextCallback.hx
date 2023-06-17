package cs.system.threading;

@:nativeGen @:libType @:csNative @:native("System.Threading.ContextCallback") extern final class Delegate_ContextCallback extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(state : Dynamic, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : Void;
	function Invoke(state : Dynamic) : Void;
	static function op_Addition(arg1 : ContextCallback, arg2 : ContextCallback) : ContextCallback;
	static function op_Subtraction(arg1 : ContextCallback, arg2 : ContextCallback) : ContextCallback;
}
