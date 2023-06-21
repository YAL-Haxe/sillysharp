package cs.system.net;

@:nativeGen @:libType @:csNative @:native("System.Net.Dns.GetHostAddressesCallback") extern final class Dns_Delegate_GetHostAddressesCallback extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(hostName : String, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : cs.NativeArray<IPAddress>;
	function Invoke(hostName : String) : cs.NativeArray<IPAddress>;
	static function op_Addition(arg1 : Dns_GetHostAddressesCallback, arg2 : Dns_GetHostAddressesCallback) : Dns_GetHostAddressesCallback;
	static function op_Subtraction(arg1 : Dns_GetHostAddressesCallback, arg2 : Dns_GetHostAddressesCallback) : Dns_GetHostAddressesCallback;
}
