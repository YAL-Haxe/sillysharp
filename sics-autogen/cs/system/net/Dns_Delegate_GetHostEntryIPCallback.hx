package cs.system.net;

@:nativeGen @:libType @:csNative @:native("System.Net.Dns.GetHostEntryIPCallback") extern final class Dns_Delegate_GetHostEntryIPCallback extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(hostAddress : IPAddress, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : IPHostEntry;
	function Invoke(hostAddress : IPAddress) : IPHostEntry;
	static function op_Addition(arg1 : Dns_GetHostEntryIPCallback, arg2 : Dns_GetHostEntryIPCallback) : Dns_GetHostEntryIPCallback;
	static function op_Subtraction(arg1 : Dns_GetHostEntryIPCallback, arg2 : Dns_GetHostEntryIPCallback) : Dns_GetHostEntryIPCallback;
}
