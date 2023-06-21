package cs.system.net;

@:nativeGen @:libType @:csNative @:native("System.Net.SocketAddress") extern class SocketAddress {
	var Family(get,never) : cs.system.net.sockets.AddressFamily;
	var Size(get,never) : Int;
	@:overload(function(family : cs.system.net.sockets.AddressFamily, size : Int) : Void {})
	function new(family : cs.system.net.sockets.AddressFamily) : Void;
	function ToString() : String;
	function get_Family() : cs.system.net.sockets.AddressFamily;
	function get_Item(offset : Int) : cs.types.UInt8;
	function get_Size() : Int;
	function set_Item(offset : Int, value : cs.types.UInt8) : Void;
}
