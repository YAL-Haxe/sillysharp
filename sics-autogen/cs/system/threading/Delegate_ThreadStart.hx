package cs.system.threading;

@:nativeGen @:libType @:csNative @:native("System.Threading.ThreadStart") extern final class Delegate_ThreadStart extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : Void;
	function Invoke() : Void;
	static function op_Addition(arg1 : ThreadStart, arg2 : ThreadStart) : ThreadStart;
	static function op_Subtraction(arg1 : ThreadStart, arg2 : ThreadStart) : ThreadStart;
}
