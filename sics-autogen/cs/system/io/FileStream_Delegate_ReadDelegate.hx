package cs.system.io;

@:nativeGen @:libType @:csNative @:native("System.IO.FileStream.ReadDelegate") extern final class FileStream_Delegate_ReadDelegate extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : Int;
	function Invoke(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int) : Int;
	static function op_Addition(arg1 : FileStream_ReadDelegate, arg2 : FileStream_ReadDelegate) : FileStream_ReadDelegate;
	static function op_Subtraction(arg1 : FileStream_ReadDelegate, arg2 : FileStream_ReadDelegate) : FileStream_ReadDelegate;
}
