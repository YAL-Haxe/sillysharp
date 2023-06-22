package cs.system.net.sockets;

/**
 * Added Span functions
 */
@:nativeGen @:libType @:csNative @:native("System.Net.Sockets.UdpClient") extern class UdpClient implements cs.system.IDisposable {
	private var Active(null,never) : Bool;
	var Available(get,never) : Int;
	var Client(get,set) : Socket;
	var DontFragment(get,set) : Bool;
	var EnableBroadcast(get,set) : Bool;
	var ExclusiveAddressUse(get,set) : Bool;
	var MulticastLoopback(get,set) : Bool;
	var Ttl(get,set) : cs.types.Int16;
	@:overload(function() : Void {})
	@:overload(function(hostname : String, port : Int) : Void {})
	@:overload(function(port : Int, family : AddressFamily) : Void {})
	@:overload(function(localEP : cs.system.net.IPEndPoint) : Void {})
	@:overload(function(port : Int) : Void {})
	function new(family : AddressFamily) : Void;
	function BeginReceive(requestCallback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult;
	@:overload(function(datagram : cs.NativeArray<cs.types.UInt8>, bytes : Int, requestCallback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult {})
	@:overload(function(datagram : cs.NativeArray<cs.types.UInt8>, bytes : Int, hostname : String, port : Int, requestCallback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult {})
	function BeginSend(datagram : cs.NativeArray<cs.types.UInt8>, bytes : Int, endPoint : cs.system.net.IPEndPoint, requestCallback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult;
	function Close() : Void;
	@:overload(function(endPoint : cs.system.net.IPEndPoint) : Void {})
	@:overload(function(hostname : String, port : Int) : Void {})
	function Connect(addr : cs.system.net.IPAddress, port : Int) : Void;
	@:noCompletion @:skipReflection @:protected private function Dispose(disposing : Bool) : Void;
	@:overload(function(multicastAddr : cs.system.net.IPAddress) : Void {})
	function DropMulticastGroup(multicastAddr : cs.system.net.IPAddress, ifindex : Int) : Void;
	function EndReceive(asyncResult : cs.system.IAsyncResult, remoteEP : cs.Ref<cs.system.net.IPEndPoint>) : cs.NativeArray<cs.types.UInt8>;
	function EndSend(asyncResult : cs.system.IAsyncResult) : Int;
	@:overload(function(multicastAddr : cs.system.net.IPAddress) : Void {})
	@:overload(function(multicastAddr : cs.system.net.IPAddress, localAddress : cs.system.net.IPAddress) : Void {})
	@:overload(function(multicastAddr : cs.system.net.IPAddress, timeToLive : Int) : Void {})
	function JoinMulticastGroup(ifindex : Int, multicastAddr : cs.system.net.IPAddress) : Void;
	function Receive(remoteEP : cs.Ref<cs.system.net.IPEndPoint>) : cs.NativeArray<cs.types.UInt8>;
	function ReceiveAsync() : cs.system.threading.tasks.Task_1<UdpReceiveResult>;
	@:overload(function(dgram : cs.system.Span<cs.types.UInt8>) : Int {}) // new
	@:overload(function(dgram : cs.system.Span<cs.types.UInt8>, endPoint : cs.system.net.IPEndPoint) : Int {}) // new
	@:overload(function(dgram : cs.NativeArray<cs.types.UInt8>, bytes : Int) : Int {})
	@:overload(function(dgram : cs.NativeArray<cs.types.UInt8>, bytes : Int, hostname : String, port : Int) : Int {})
	function Send(dgram : cs.NativeArray<cs.types.UInt8>, bytes : Int, endPoint : cs.system.net.IPEndPoint) : Int;
	@:overload(function(datagram : cs.NativeArray<cs.types.UInt8>, bytes : Int) : cs.system.threading.tasks.Task_1<Int> {})
	@:overload(function(datagram : cs.NativeArray<cs.types.UInt8>, bytes : Int, hostname : String, port : Int) : cs.system.threading.tasks.Task_1<Int> {})
	function SendAsync(datagram : cs.NativeArray<cs.types.UInt8>, bytes : Int, endPoint : cs.system.net.IPEndPoint) : cs.system.threading.tasks.Task_1<Int>;
	@:protected private function get_Active() : Bool;
	function get_Available() : Int;
	function get_Client() : Socket;
	function get_DontFragment() : Bool;
	function get_EnableBroadcast() : Bool;
	function get_ExclusiveAddressUse() : Bool;
	function get_MulticastLoopback() : Bool;
	function get_Ttl() : cs.types.Int16;
	@:protected private function set_Active(value : Bool) : Bool;
	function set_Client(value : Socket) : Socket;
	function set_DontFragment(value : Bool) : Bool;
	function set_EnableBroadcast(value : Bool) : Bool;
	function set_ExclusiveAddressUse(value : Bool) : Bool;
	function set_MulticastLoopback(value : Bool) : Bool;
	function set_Ttl(value : cs.types.Int16) : cs.types.Int16;
}
