package cs.system.net;

@:nativeGen @:libType @:csNative @:native("System.Net.IPHostEntry") extern class IPHostEntry {
	var AddressList(get,set) : cs.NativeArray<IPAddress>;
	var Aliases(get,set) : cs.NativeArray<String>;
	var HostName(get,set) : String;
	function new() : Void;
	function get_AddressList() : cs.NativeArray<IPAddress>;
	function get_Aliases() : cs.NativeArray<String>;
	function get_HostName() : String;
	function set_AddressList(value : cs.NativeArray<IPAddress>) : cs.NativeArray<IPAddress>;
	function set_Aliases(value : cs.NativeArray<String>) : cs.NativeArray<String>;
	function set_HostName(value : String) : String;
}
