package cs.system.net.sockets;

@:nativeGen @:libType @:csNative @:native("System.Net.Sockets.Socket.SendFileHandler") extern final class Socket_Delegate_SendFileHandler extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(fileName : String, preBuffer : cs.NativeArray<cs.types.UInt8>, postBuffer : cs.NativeArray<cs.types.UInt8>, flags : TransmitFileOptions, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : Void;
	function Invoke(fileName : String, preBuffer : cs.NativeArray<cs.types.UInt8>, postBuffer : cs.NativeArray<cs.types.UInt8>, flags : TransmitFileOptions) : Void;
	static function op_Addition(arg1 : Socket_SendFileHandler, arg2 : Socket_SendFileHandler) : Socket_SendFileHandler;
	static function op_Subtraction(arg1 : Socket_SendFileHandler, arg2 : Socket_SendFileHandler) : Socket_SendFileHandler;
}
