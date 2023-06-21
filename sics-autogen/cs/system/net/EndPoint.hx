package cs.system.net;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Net.EndPoint") extern class EndPoint {
	var AddressFamily(get,never) : cs.system.net.sockets.AddressFamily;
	@:protected private function new() : Void;
	function Create(socketAddress : SocketAddress) : EndPoint;
	function Serialize() : SocketAddress;
	function get_AddressFamily() : cs.system.net.sockets.AddressFamily;
}
