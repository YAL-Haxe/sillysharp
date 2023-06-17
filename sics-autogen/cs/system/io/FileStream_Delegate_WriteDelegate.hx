package cs.system.io;

@:nativeGen @:libType @:csNative @:native("System.IO.FileStream.WriteDelegate") extern final class FileStream_Delegate_WriteDelegate extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : Void;
	function Invoke(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int) : Void;
	static function op_Addition(arg1 : FileStream_WriteDelegate, arg2 : FileStream_WriteDelegate) : FileStream_WriteDelegate;
	static function op_Subtraction(arg1 : FileStream_WriteDelegate, arg2 : FileStream_WriteDelegate) : FileStream_WriteDelegate;
}
