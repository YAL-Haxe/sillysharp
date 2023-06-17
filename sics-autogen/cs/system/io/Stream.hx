package cs.system.io;

@:nativeGen @:abstract @:libType @:csNative @:native("System.IO.Stream") extern class Stream extends cs.system.MarshalByRefObject implements cs.system.IDisposable {
	var CanRead(get,never) : Bool;
	var CanSeek(get,never) : Bool;
	var CanTimeout(get,never) : Bool;
	var CanWrite(get,never) : Bool;
	var Length(get,never) : haxe.Int64;
	var Position(get,set) : haxe.Int64;
	var ReadTimeout(get,set) : Int;
	var WriteTimeout(get,set) : Int;
	@:protected private function new() : Void;
	function BeginRead(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult;
	function BeginWrite(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int, callback : cs.system.AsyncCallback, state : Dynamic) : cs.system.IAsyncResult;
	function Close() : Void;
	@:overload(function(destination : Stream) : Void {})
	function CopyTo(destination : Stream, bufferSize : Int) : Void;
	@:overload(function(destination : Stream) : cs.system.threading.tasks.Task {})
	@:overload(function(destination : Stream, bufferSize : Int, cancellationToken : cs.system.threading.CancellationToken) : cs.system.threading.tasks.Task {})
	function CopyToAsync(destination : Stream, bufferSize : Int) : cs.system.threading.tasks.Task;
	@:protected private function CreateWaitHandle() : cs.system.threading.WaitHandle;
	@:overload(function() : Void {})
	@:protected private function Dispose(disposing : Bool) : Void;
	function EndRead(asyncResult : cs.system.IAsyncResult) : Int;
	function EndWrite(asyncResult : cs.system.IAsyncResult) : Void;
	function Flush() : Void;
	@:overload(function() : cs.system.threading.tasks.Task {})
	function FlushAsync(cancellationToken : cs.system.threading.CancellationToken) : cs.system.threading.tasks.Task;
	@:protected private function ObjectInvariant() : Void;
	function Read(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int) : Int;
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int) : cs.system.threading.tasks.Task_1<Int> {})
	function ReadAsync(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int, cancellationToken : cs.system.threading.CancellationToken) : cs.system.threading.tasks.Task_1<Int>;
	function ReadByte() : Int;
	function Seek(offset : haxe.Int64, origin : SeekOrigin) : haxe.Int64;
	function SetLength(value : haxe.Int64) : Void;
	function Write(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int) : Void;
	@:overload(function(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int) : cs.system.threading.tasks.Task {})
	function WriteAsync(buffer : cs.NativeArray<cs.types.UInt8>, offset : Int, count : Int, cancellationToken : cs.system.threading.CancellationToken) : cs.system.threading.tasks.Task;
	function WriteByte(value : cs.types.UInt8) : Void;
	function get_CanRead() : Bool;
	function get_CanSeek() : Bool;
	function get_CanTimeout() : Bool;
	function get_CanWrite() : Bool;
	function get_Length() : haxe.Int64;
	function get_Position() : haxe.Int64;
	function get_ReadTimeout() : Int;
	function get_WriteTimeout() : Int;
	function set_Position(value : haxe.Int64) : haxe.Int64;
	function set_ReadTimeout(value : Int) : Int;
	function set_WriteTimeout(value : Int) : Int;
	@:readOnly static var Null(default,never) : Stream;
	static function Synchronized(stream : Stream) : Stream;
}
