package cs.system.net.sockets;

@:nativeGen @:libType @:csNative @:native("System.Net.Sockets.Socket") extern class Socket implements cs.system.IDisposable {
	var AddressFamily(get,never) : AddressFamily;
	var Available(get,never) : Int;
	var Blocking(get,set) : Bool;
	var Connected(get,never) : Bool;
	var DontFragment(get,set) : Bool;
	var EnableBroadcast(get,set) : Bool;
	var ExclusiveAddressUse(get,set) : Bool;
	var Handle(get,never) : cs.system.IntPtr;
	var IsBound(get,never) : Bool;
	var LingerState(get,set) : LingerOption;
	var LocalEndPoint(get,never) : cs.system.net.EndPoint;
	var MulticastLoopback(get,set) : Bool;
	var NoDelay(get,set) : Bool;
	var ProtocolType(get,never) : ProtocolType;
	var ReceiveBufferSize(get,set) : Int;
	var ReceiveTimeout(get,set) : Int;
	var RemoteEndPoint(get,never) : cs.system.net.EndPoint;
	var SendBufferSize(get,set) : Int;
	var SendTimeout(get,set) : Int;
	var SocketType(get,never) : SocketType;
	var Ttl(get,set) : cs.types.Int16;
	var UseOnlyOverlappedIO(get,set) : Bool;
	@:overload(function(socketInformation : SocketInformation) : Void {})
	function new(addressFamily : AddressFamily, socketType : SocketType, protocolType : ProtocolType) : Void;
	function Accept() : Socket;
	function AcceptAsync(e : SocketAsyncEventArgs) : Bool;
	@:overload(function(callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult {})
	@:overload(function(acceptSocket : Socket, receiveSize : Int, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult {})
	function BeginAccept(receiveSize : Int, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult;
	@:overload(function(address : cs.system.net.IPAddress, port : Int, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult {})
	@:overload(function(addresses : cs.NativeArray<cs.system.net.IPAddress>, port : Int, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult {})
	@:overload(function(end_point : cs.system.net.EndPoint, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult {})
	function BeginConnect(host : String, port : Int, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult;
	function BeginDisconnect(reuseSocket : Bool, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult;
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, size : Int, socket_flags : SocketFlags, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult {})
	@:overload(function(buffers : cs.system.collections.generic.IList_1<cs.system.ArraySegment_1<cs.types.UInt8>>, socketFlags : SocketFlags, errorCode : cs.Out<SocketError>, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult {})
	@:overload(function(buffers : cs.system.collections.generic.IList_1<cs.system.ArraySegment_1<cs.types.UInt8>>, socketFlags : SocketFlags, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult {})
	function BeginReceive(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, size : Int, flags : SocketFlags, error : cs.Out<SocketError>, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult;
	function BeginReceiveFrom(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, size : Int, socket_flags : SocketFlags, remote_end : cs.Ref<cs.system.net.EndPoint>, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult;
	function BeginReceiveMessageFrom(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, size : Int, socketFlags : SocketFlags, remoteEP : cs.Ref<cs.system.net.EndPoint>, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult;
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, size : Int, socket_flags : SocketFlags, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult {})
	@:overload(function(buffers : cs.system.collections.generic.IList_1<cs.system.ArraySegment_1<cs.types.UInt8>>, socketFlags : SocketFlags, errorCode : cs.Out<SocketError>, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult {})
	@:overload(function(buffers : cs.system.collections.generic.IList_1<cs.system.ArraySegment_1<cs.types.UInt8>>, socketFlags : SocketFlags, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult {})
	function BeginSend(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, size : Int, socketFlags : SocketFlags, errorCode : cs.Out<SocketError>, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult;
	@:overload(function(fileName : String, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult {})
	function BeginSendFile(fileName : String, preBuffer : cs.NativeArray<cs.types.UInt8>, postBuffer : cs.NativeArray<cs.types.UInt8>, flags : TransmitFileOptions, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult;
	function BeginSendTo(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, size : Int, socket_flags : SocketFlags, remote_end : cs.system.net.EndPoint, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult;
	function Bind(local_end : cs.system.net.EndPoint) : Void;
	@:overload(function() : Void {})
	function Close(timeout : Int) : Void;
	@:overload(function(address : cs.system.net.IPAddress, port : Int) : Void {})
	@:overload(function(remoteEP : cs.system.net.EndPoint) : Void {})
	@:overload(function(host : String, port : Int) : Void {})
	function Connect(addresses : cs.NativeArray<cs.system.net.IPAddress>, port : Int) : Void;
	function ConnectAsync(e : SocketAsyncEventArgs) : Bool;
	function Disconnect(reuseSocket : Bool) : Void;
	function DisconnectAsync(e : SocketAsyncEventArgs) : Bool;
	@:overload(function(disposing : Bool) : Void {})
	function Dispose() : Void;
	function DuplicateAndClose(targetProcessId : Int) : SocketInformation;
	@:overload(function(result : cs.system.IAsyncResult) : Socket {})
	@:overload(function(buffer : cs.Out<cs.NativeArray<cs.types.UInt8>>, bytesTransferred : cs.Out<Int>, asyncResult : cs.system.IAsyncResult) : Socket {})
	function EndAccept(buffer : cs.Out<cs.NativeArray<cs.types.UInt8>>, asyncResult : cs.system.IAsyncResult) : Socket;
	function EndConnect(result : cs.system.IAsyncResult) : Void;
	function EndDisconnect(asyncResult : cs.system.IAsyncResult) : Void;
	@:overload(function(result : cs.system.IAsyncResult) : Int {})
	function EndReceive(asyncResult : cs.system.IAsyncResult, errorCode : cs.Out<SocketError>) : Int;
	function EndReceiveFrom(result : cs.system.IAsyncResult, end_point : cs.Ref<cs.system.net.EndPoint>) : Int;
	function EndReceiveMessageFrom(asyncResult : cs.system.IAsyncResult, socketFlags : cs.Ref<SocketFlags>, endPoint : cs.Ref<cs.system.net.EndPoint>, ipPacketInformation : cs.Out<IPPacketInformation>) : Int;
	@:overload(function(result : cs.system.IAsyncResult) : Int {})
	function EndSend(asyncResult : cs.system.IAsyncResult, errorCode : cs.Out<SocketError>) : Int;
	function EndSendFile(asyncResult : cs.system.IAsyncResult) : Void;
	function EndSendTo(result : cs.system.IAsyncResult) : Int;
	@:overload(function(optionLevel : SocketOptionLevel, optionName : SocketOptionName, optionValue : cs.NativeArray<cs.types.UInt8>) : Void {})
	@:overload(function(optionLevel : SocketOptionLevel, optionName : SocketOptionName) : Dynamic {})
	function GetSocketOption(optionLevel : SocketOptionLevel, optionName : SocketOptionName, length : Int) : cs.NativeArray<cs.types.UInt8>;
	@:overload(function(ioctl_code : Int, in_value : cs.NativeArray<cs.types.UInt8>, out_value : cs.NativeArray<cs.types.UInt8>) : Int {})
	function IOControl(ioControlCode : IOControlCode, optionInValue : cs.NativeArray<cs.types.UInt8>, optionOutValue : cs.NativeArray<cs.types.UInt8>) : Int;
	function Listen(backlog : Int) : Void;
	function Poll(time_us : Int, mode : SelectMode) : Bool;
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>) : Int {})
	@:overload(function(buffers : cs.system.collections.generic.IList_1<cs.system.ArraySegment_1<cs.types.UInt8>>, socketFlags : SocketFlags, errorCode : cs.Out<SocketError>) : Int {})
	@:overload(function(buffers : cs.system.collections.generic.IList_1<cs.system.ArraySegment_1<cs.types.UInt8>>, socketFlags : SocketFlags) : Int {})
	@:overload(function(buffers : cs.system.collections.generic.IList_1<cs.system.ArraySegment_1<cs.types.UInt8>>) : Int {})
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, size : Int, flags : SocketFlags, error : cs.Out<SocketError>) : Int {})
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, size : Int, flags : SocketFlags) : Int {})
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>, size : Int, flags : SocketFlags) : Int {})
	function Receive(buffer : cs.NativeArray<cs.types.UInt8>, flags : SocketFlags) : Int;
	function ReceiveAsync(e : SocketAsyncEventArgs) : Bool;
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>, remoteEP : cs.Ref<cs.system.net.EndPoint>) : Int {})
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, size : Int, flags : SocketFlags, remoteEP : cs.Ref<cs.system.net.EndPoint>) : Int {})
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>, size : Int, flags : SocketFlags, remoteEP : cs.Ref<cs.system.net.EndPoint>) : Int {})
	function ReceiveFrom(buffer : cs.NativeArray<cs.types.UInt8>, flags : SocketFlags, remoteEP : cs.Ref<cs.system.net.EndPoint>) : Int;
	function ReceiveFromAsync(e : SocketAsyncEventArgs) : Bool;
	function ReceiveMessageFrom(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, size : Int, socketFlags : cs.Ref<SocketFlags>, remoteEP : cs.Ref<cs.system.net.EndPoint>, ipPacketInformation : cs.Out<IPPacketInformation>) : Int;
	function ReceiveMessageFromAsync(e : SocketAsyncEventArgs) : Bool;
	@:overload(function(buf : cs.NativeArray<cs.types.UInt8>) : Int {})
	@:overload(function(buffers : cs.system.collections.generic.IList_1<cs.system.ArraySegment_1<cs.types.UInt8>>, socketFlags : SocketFlags, errorCode : cs.Out<SocketError>) : Int {})
	@:overload(function(buffers : cs.system.collections.generic.IList_1<cs.system.ArraySegment_1<cs.types.UInt8>>, socketFlags : SocketFlags) : Int {})
	@:overload(function(buffers : cs.system.collections.generic.IList_1<cs.system.ArraySegment_1<cs.types.UInt8>>) : Int {})
	@:overload(function(buf : cs.NativeArray<cs.types.UInt8>, offset : Int, size : Int, flags : SocketFlags, error : cs.Out<SocketError>) : Int {})
	@:overload(function(buf : cs.NativeArray<cs.types.UInt8>, offset : Int, size : Int, flags : SocketFlags) : Int {})
	@:overload(function(buf : cs.NativeArray<cs.types.UInt8>, size : Int, flags : SocketFlags) : Int {})
	function Send(buf : cs.NativeArray<cs.types.UInt8>, flags : SocketFlags) : Int;
	function SendAsync(e : SocketAsyncEventArgs) : Bool;
	@:overload(function(fileName : String) : Void {})
	function SendFile(fileName : String, preBuffer : cs.NativeArray<cs.types.UInt8>, postBuffer : cs.NativeArray<cs.types.UInt8>, flags : TransmitFileOptions) : Void;
	function SendPacketsAsync(e : SocketAsyncEventArgs) : Bool;
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>, remote_end : cs.system.net.EndPoint) : Int {})
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, size : Int, flags : SocketFlags, remote_end : cs.system.net.EndPoint) : Int {})
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>, size : Int, flags : SocketFlags, remote_end : cs.system.net.EndPoint) : Int {})
	function SendTo(buffer : cs.NativeArray<cs.types.UInt8>, flags : SocketFlags, remote_end : cs.system.net.EndPoint) : Int;
	function SendToAsync(e : SocketAsyncEventArgs) : Bool;
	@:overload(function(optionLevel : SocketOptionLevel, optionName : SocketOptionName, optionValue : cs.NativeArray<cs.types.UInt8>) : Void {})
	@:overload(function(optionLevel : SocketOptionLevel, optionName : SocketOptionName, optionValue : Int) : Void {})
	@:overload(function(optionLevel : SocketOptionLevel, optionName : SocketOptionName, optionValue : Bool) : Void {})
	function SetSocketOption(optionLevel : SocketOptionLevel, optionName : SocketOptionName, optionValue : Dynamic) : Void;
	function Shutdown(how : SocketShutdown) : Void;
	function get_AddressFamily() : AddressFamily;
	function get_Available() : Int;
	function get_Blocking() : Bool;
	function get_Connected() : Bool;
	function get_DontFragment() : Bool;
	function get_EnableBroadcast() : Bool;
	function get_ExclusiveAddressUse() : Bool;
	function get_Handle() : cs.system.IntPtr;
	function get_IsBound() : Bool;
	function get_LingerState() : LingerOption;
	function get_LocalEndPoint() : cs.system.net.EndPoint;
	function get_MulticastLoopback() : Bool;
	function get_NoDelay() : Bool;
	function get_ProtocolType() : ProtocolType;
	function get_ReceiveBufferSize() : Int;
	function get_ReceiveTimeout() : Int;
	function get_RemoteEndPoint() : cs.system.net.EndPoint;
	function get_SendBufferSize() : Int;
	function get_SendTimeout() : Int;
	function get_SocketType() : SocketType;
	function get_Ttl() : cs.types.Int16;
	function get_UseOnlyOverlappedIO() : Bool;
	function set_Blocking(value : Bool) : Bool;
	function set_DontFragment(value : Bool) : Bool;
	function set_EnableBroadcast(value : Bool) : Bool;
	function set_ExclusiveAddressUse(value : Bool) : Bool;
	function set_LingerState(value : LingerOption) : LingerOption;
	function set_MulticastLoopback(value : Bool) : Bool;
	function set_NoDelay(value : Bool) : Bool;
	function set_ReceiveBufferSize(value : Int) : Int;
	function set_ReceiveTimeout(value : Int) : Int;
	function set_SendBufferSize(value : Int) : Int;
	function set_SendTimeout(value : Int) : Int;
	function set_Ttl(value : cs.types.Int16) : cs.types.Int16;
	function set_UseOnlyOverlappedIO(value : Bool) : Bool;
	static var OSSupportsIPv6(get,never) : Bool;
	static var SupportsIPv4(get,never) : Bool;
	static var SupportsIPv6(get,never) : Bool;
	static function Select(checkRead : cs.system.collections.IList, checkWrite : cs.system.collections.IList, checkError : cs.system.collections.IList, microSeconds : Int) : Void;
	static function get_OSSupportsIPv6() : Bool;
	static function get_SupportsIPv4() : Bool;
	static function get_SupportsIPv6() : Bool;
}
