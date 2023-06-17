package cs.system.runtime.remoting.contexts;

@:nativeGen @:libType @:csNative @:native("System.Runtime.Remoting.Contexts.CrossContextDelegate") extern final class Delegate_CrossContextDelegate extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : Void;
	function Invoke() : Void;
	static function op_Addition(arg1 : CrossContextDelegate, arg2 : CrossContextDelegate) : CrossContextDelegate;
	static function op_Subtraction(arg1 : CrossContextDelegate, arg2 : CrossContextDelegate) : CrossContextDelegate;
}
