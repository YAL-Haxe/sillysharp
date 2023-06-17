package cs.system;

@:nativeGen @:libType @:csNative @:native("System.AssemblyLoadEventHandler") extern final class Delegate_AssemblyLoadEventHandler extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(sender : Dynamic, args : AssemblyLoadEventArgs, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : Void;
	function Invoke(sender : Dynamic, args : AssemblyLoadEventArgs) : Void;
	static function op_Addition(arg1 : AssemblyLoadEventHandler, arg2 : AssemblyLoadEventHandler) : AssemblyLoadEventHandler;
	static function op_Subtraction(arg1 : AssemblyLoadEventHandler, arg2 : AssemblyLoadEventHandler) : AssemblyLoadEventHandler;
}
