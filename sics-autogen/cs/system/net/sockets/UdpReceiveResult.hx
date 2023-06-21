package cs.system.net.sockets;

@:nativeGen @:struct @:libType @:csNative @:native("System.Net.Sockets.UdpReceiveResult") extern final class UdpReceiveResult extends cs.system.ValueType implements cs.system.IEquatable_1<UdpReceiveResult> {
	var Buffer(get,never) : cs.NativeArray<cs.types.UInt8>;
	var RemoteEndPoint(get,never) : cs.system.net.IPEndPoint;
	function new(buffer : cs.NativeArray<cs.types.UInt8>, remoteEndPoint : cs.system.net.IPEndPoint) : Void;
	function get_Buffer() : cs.NativeArray<cs.types.UInt8>;
	function get_RemoteEndPoint() : cs.system.net.IPEndPoint;
	static function op_Equality(left : UdpReceiveResult, right : UdpReceiveResult) : Bool;
	static function op_Inequality(left : UdpReceiveResult, right : UdpReceiveResult) : Bool;
}
