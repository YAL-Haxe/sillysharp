package cs.system.io;

@:nativeGen @:libType @:csNative @:native("System.IO.FileStream") extern class FileStream extends Stream {
	var CanRead(get,never) : Bool;
	var CanSeek(get,never) : Bool;
	var CanWrite(get,never) : Bool;
	var Handle(get,never) : cs.system.IntPtr;
	var IsAsync(get,never) : Bool;
	var Length(get,never) : haxe.Int64;
	var Name(get,never) : String;
	var Position(get,set) : haxe.Int64;
	var SafeFileHandle(get,never) : microsoft.win32.safehandles.SafeFileHandle;
	@:overload(function(handle : cs.system.IntPtr, access : FileAccess) : Void {})
	@:overload(function(path : String, mode : FileMode, rights : cs.system.security.accesscontrol.FileSystemRights, share : FileShare, bufferSize : Int, options : FileOptions, fileSecurity : cs.system.security.accesscontrol.FileSecurity) : Void {})
	@:overload(function(path : String, mode : FileMode, rights : cs.system.security.accesscontrol.FileSystemRights, share : FileShare, bufferSize : Int, options : FileOptions) : Void {})
	@:overload(function(handle : microsoft.win32.safehandles.SafeFileHandle, access : FileAccess, bufferSize : Int, isAsync : Bool) : Void {})
	@:overload(function(handle : microsoft.win32.safehandles.SafeFileHandle, access : FileAccess, bufferSize : Int) : Void {})
	@:overload(function(handle : microsoft.win32.safehandles.SafeFileHandle, access : FileAccess) : Void {})
	@:overload(function(path : String, mode : FileMode, access : FileAccess, share : FileShare, bufferSize : Int, options : FileOptions) : Void {})
	@:overload(function(path : String, mode : FileMode, access : FileAccess, share : FileShare, bufferSize : Int, useAsync : Bool) : Void {})
	@:overload(function(path : String, mode : FileMode, access : FileAccess, share : FileShare, bufferSize : Int) : Void {})
	@:overload(function(path : String, mode : FileMode, access : FileAccess, share : FileShare) : Void {})
	@:overload(function(path : String, mode : FileMode, access : FileAccess) : Void {})
	@:overload(function(path : String, mode : FileMode) : Void {})
	@:overload(function(handle : cs.system.IntPtr, access : FileAccess, ownsHandle : Bool, bufferSize : Int, isAsync : Bool) : Void {})
	@:overload(function(handle : cs.system.IntPtr, access : FileAccess, ownsHandle : Bool, bufferSize : Int) : Void {})
	function new(handle : cs.system.IntPtr, access : FileAccess, ownsHandle : Bool) : Void;
	function BeginRead(array : cs.NativeArray<cs.types.UInt8>, offset : Int, numBytes : Int, userCallback : cs.system.AsyncCallback, stateObject : Dynamic) : cs.system.IAsyncResult;
	function BeginWrite(array : cs.NativeArray<cs.types.UInt8>, offset : Int, numBytes : Int, userCallback : cs.system.AsyncCallback, stateObject : Dynamic) : cs.system.IAsyncResult;
	@:protected private function Dispose(disposing : Bool) : Void;
	function EndRead(asyncResult : cs.system.IAsyncResult) : Int;
	function EndWrite(asyncResult : cs.system.IAsyncResult) : Void;
	@:overload(function() : Void {})
	function Flush(flushToDisk : Bool) : Void;
	function FlushAsync(cancellationToken : cs.system.threading.CancellationToken) : cs.system.threading.tasks.Task;
	function GetAccessControl() : cs.system.security.accesscontrol.FileSecurity;
	function Lock(position : haxe.Int64, length : haxe.Int64) : Void;
	function Read(array : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int) : Int;
	function ReadAsync(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int, cancellationToken : cs.system.threading.CancellationToken) : cs.system.threading.tasks.Task_1<Int>;
	function ReadByte() : Int;
	function Seek(offset : haxe.Int64, origin : SeekOrigin) : haxe.Int64;
	function SetAccessControl(fileSecurity : cs.system.security.accesscontrol.FileSecurity) : Void;
	function SetLength(value : haxe.Int64) : Void;
	function Unlock(position : haxe.Int64, length : haxe.Int64) : Void;
	function Write(array : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int) : Void;
	function WriteAsync(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int, cancellationToken : cs.system.threading.CancellationToken) : cs.system.threading.tasks.Task;
	function WriteByte(value : cs.types.UInt8) : Void;
	function get_CanRead() : Bool;
	function get_CanSeek() : Bool;
	function get_CanWrite() : Bool;
	function get_Handle() : cs.system.IntPtr;
	function get_IsAsync() : Bool;
	function get_Length() : haxe.Int64;
	function get_Name() : String;
	function get_Position() : haxe.Int64;
	function get_SafeFileHandle() : microsoft.win32.safehandles.SafeFileHandle;
	function set_Position(value : haxe.Int64) : haxe.Int64;
}
