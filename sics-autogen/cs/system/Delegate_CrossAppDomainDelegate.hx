package cs.system;

@:nativeGen @:libType @:csNative @:native("System.CrossAppDomainDelegate") extern final class Delegate_CrossAppDomainDelegate extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : Void;
	function Invoke() : Void;
	static function op_Addition(arg1 : CrossAppDomainDelegate, arg2 : CrossAppDomainDelegate) : CrossAppDomainDelegate;
	static function op_Subtraction(arg1 : CrossAppDomainDelegate, arg2 : CrossAppDomainDelegate) : CrossAppDomainDelegate;
}
