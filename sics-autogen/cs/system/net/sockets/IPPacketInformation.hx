package cs.system.net.sockets;

@:nativeGen @:struct @:libType @:csNative @:native("System.Net.Sockets.IPPacketInformation") extern final class IPPacketInformation extends cs.system.ValueType {
	var Address(get,never) : cs.system.net.IPAddress;
	var Interface(get,never) : Int;
	function get_Address() : cs.system.net.IPAddress;
	function get_Interface() : Int;
	static function op_Equality(p1 : IPPacketInformation, p2 : IPPacketInformation) : Bool;
	static function op_Inequality(p1 : IPPacketInformation, p2 : IPPacketInformation) : Bool;
}
