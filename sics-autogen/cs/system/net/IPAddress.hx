package cs.system.net;

@:nativeGen @:libType @:csNative @:native("System.Net.IPAddress") extern class IPAddress {
	var Address(get,set) : haxe.Int64;
	var AddressFamily(get,never) : cs.system.net.sockets.AddressFamily;
	var IsIPv6LinkLocal(get,never) : Bool;
	var IsIPv6Multicast(get,never) : Bool;
	var IsIPv6SiteLocal(get,never) : Bool;
	var IsIPv6Teredo(get,never) : Bool;
	var ScopeId(get,set) : haxe.Int64;
	@:overload(function(newAddress : haxe.Int64) : Void {})
	@:overload(function(address : cs.NativeArray<cs.types.UInt8>, scopeid : haxe.Int64) : Void {})
	function new(address : cs.NativeArray<cs.types.UInt8>) : Void;
	function GetAddressBytes() : cs.NativeArray<cs.types.UInt8>;
	function ToString() : String;
	function get_Address() : haxe.Int64;
	function get_AddressFamily() : cs.system.net.sockets.AddressFamily;
	function get_IsIPv6LinkLocal() : Bool;
	function get_IsIPv6Multicast() : Bool;
	function get_IsIPv6SiteLocal() : Bool;
	function get_IsIPv6Teredo() : Bool;
	function get_ScopeId() : haxe.Int64;
	function set_Address(value : haxe.Int64) : haxe.Int64;
	function set_ScopeId(value : haxe.Int64) : haxe.Int64;
	@:readOnly static var Any(default,never) : IPAddress;
	@:readOnly static var Broadcast(default,never) : IPAddress;
	@:readOnly static var IPv6Any(default,never) : IPAddress;
	@:readOnly static var IPv6Loopback(default,never) : IPAddress;
	@:readOnly static var IPv6None(default,never) : IPAddress;
	@:readOnly static var Loopback(default,never) : IPAddress;
	@:readOnly static var None(default,never) : IPAddress;
	@:overload(function(host : cs.types.Int16) : cs.types.Int16 {})
	@:overload(function(host : haxe.Int64) : haxe.Int64 {})
	static function HostToNetworkOrder(host : Int) : Int;
	static function IsLoopback(address : IPAddress) : Bool;
	@:overload(function(network : cs.types.Int16) : cs.types.Int16 {})
	@:overload(function(network : haxe.Int64) : haxe.Int64 {})
	static function NetworkToHostOrder(network : Int) : Int;
	static function Parse(ipString : String) : IPAddress;
	static function TryParse(ipString : String, address : cs.Out<IPAddress>) : Bool;
}
