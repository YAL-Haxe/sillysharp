package cs.system.threading;

@:nativeGen @:libType @:csNative @:native("System.Threading.ParameterizedThreadStart") extern final class Delegate_ParameterizedThreadStart extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(obj : Dynamic, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : Void;
	function Invoke(obj : Dynamic) : Void;
	static function op_Addition(arg1 : ParameterizedThreadStart, arg2 : ParameterizedThreadStart) : ParameterizedThreadStart;
	static function op_Subtraction(arg1 : ParameterizedThreadStart, arg2 : ParameterizedThreadStart) : ParameterizedThreadStart;
}
