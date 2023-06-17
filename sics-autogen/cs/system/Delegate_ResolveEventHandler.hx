package cs.system;

@:nativeGen @:libType @:csNative @:native("System.ResolveEventHandler") extern final class Delegate_ResolveEventHandler extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(sender : Dynamic, args : ResolveEventArgs, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : cs.system.reflection.Assembly;
	function Invoke(sender : Dynamic, args : ResolveEventArgs) : cs.system.reflection.Assembly;
	static function op_Addition(arg1 : ResolveEventHandler, arg2 : ResolveEventHandler) : ResolveEventHandler;
	static function op_Subtraction(arg1 : ResolveEventHandler, arg2 : ResolveEventHandler) : ResolveEventHandler;
}
