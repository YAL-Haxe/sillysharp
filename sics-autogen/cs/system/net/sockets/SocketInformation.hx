package cs.system.net.sockets;

@:nativeGen @:struct @:libType @:csNative @:native("System.Net.Sockets.SocketInformation") extern final class SocketInformation extends cs.system.ValueType {
	var Options(get,set) : SocketInformationOptions;
	var ProtocolInformation(get,set) : cs.NativeArray<cs.types.UInt8>;
	function get_Options() : SocketInformationOptions;
	function get_ProtocolInformation() : cs.NativeArray<cs.types.UInt8>;
	function set_Options(value : SocketInformationOptions) : SocketInformationOptions;
	function set_ProtocolInformation(value : cs.NativeArray<cs.types.UInt8>) : cs.NativeArray<cs.types.UInt8>;
}
