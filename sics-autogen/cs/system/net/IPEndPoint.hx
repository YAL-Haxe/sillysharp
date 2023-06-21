package cs.system.net;

@:nativeGen @:libType @:csNative @:native("System.Net.IPEndPoint") extern class IPEndPoint extends EndPoint {
	var Address(get,set) : IPAddress;
	var AddressFamily(get,never) : cs.system.net.sockets.AddressFamily;
	var Port(get,set) : Int;
	@:overload(function(address : IPAddress, port : Int) : Void {})
	function new(address : haxe.Int64, port : Int) : Void;
	function Create(socketAddress : SocketAddress) : EndPoint;
	function Serialize() : SocketAddress;
	function ToString() : String;
	function get_Address() : IPAddress;
	function get_AddressFamily() : cs.system.net.sockets.AddressFamily;
	function get_Port() : Int;
	function set_Address(value : IPAddress) : IPAddress;
	function set_Port(value : Int) : Int;
	@:readOnly static var MaxPort(default,never) : Int;
	@:readOnly static var MinPort(default,never) : Int;
}
