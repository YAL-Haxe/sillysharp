package cs.system.net;

@:nativeGen @:libType @:csNative @:native("System.Net.Dns.GetHostByNameCallback") extern final class Dns_Delegate_GetHostByNameCallback extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(hostName : String, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : IPHostEntry;
	function Invoke(hostName : String) : IPHostEntry;
	static function op_Addition(arg1 : Dns_GetHostByNameCallback, arg2 : Dns_GetHostByNameCallback) : Dns_GetHostByNameCallback;
	static function op_Subtraction(arg1 : Dns_GetHostByNameCallback, arg2 : Dns_GetHostByNameCallback) : Dns_GetHostByNameCallback;
}
