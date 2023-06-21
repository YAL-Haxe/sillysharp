package cs.system.net;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Net.Dns") extern final class Dns {
	static function BeginGetHostAddresses(hostNameOrAddress : String, requestCallback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult;
	static function BeginGetHostByName(hostName : String, requestCallback : cs.system.AsyncCallback, stateObject : Dynamic) : cs.system.IAsyncResult;
	@:overload(function(hostNameOrAddress : String, requestCallback : cs.system.AsyncCallback, stateObject : Dynamic) : cs.system.IAsyncResult {})
	static function BeginGetHostEntry(address : IPAddress, requestCallback : cs.system.AsyncCallback, stateObject : Dynamic) : cs.system.IAsyncResult;
	static function BeginResolve(hostName : String, requestCallback : cs.system.AsyncCallback, stateObject : Dynamic) : cs.system.IAsyncResult;
	static function EndGetHostAddresses(asyncResult : cs.system.IAsyncResult) : cs.NativeArray<IPAddress>;
	static function EndGetHostByName(asyncResult : cs.system.IAsyncResult) : IPHostEntry;
	static function EndGetHostEntry(asyncResult : cs.system.IAsyncResult) : IPHostEntry;
	static function EndResolve(asyncResult : cs.system.IAsyncResult) : IPHostEntry;
	static function GetHostAddresses(hostNameOrAddress : String) : cs.NativeArray<IPAddress>;
	static function GetHostAddressesAsync(hostNameOrAddress : String) : cs.system.threading.tasks.Task_1<cs.NativeArray<IPAddress>>;
	@:overload(function(address : IPAddress) : IPHostEntry {})
	static function GetHostByAddress(address : String) : IPHostEntry;
	static function GetHostByName(hostName : String) : IPHostEntry;
	@:overload(function(hostNameOrAddress : String) : IPHostEntry {})
	static function GetHostEntry(address : IPAddress) : IPHostEntry;
	@:overload(function(address : IPAddress) : cs.system.threading.tasks.Task_1<IPHostEntry> {})
	static function GetHostEntryAsync(hostNameOrAddress : String) : cs.system.threading.tasks.Task_1<IPHostEntry>;
	static function GetHostName() : String;
	static function Resolve(hostName : String) : IPHostEntry;
}
