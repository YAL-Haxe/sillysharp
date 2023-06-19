package cs.system.io;

@:nativeGen @:abstract @:libType @:csNative @:native("System.IO.TextReader") extern class TextReader extends cs.system.MarshalByRefObject implements cs.system.IDisposable {
	@:protected private function new() : Void;
	function Close() : Void;
	@:overload(function() : Void {})
	@:protected private function Dispose(disposing : Bool) : Void;
	function Peek() : Int;
	@:overload(function() : Int {})
	function Read(buffer : cs.NativeArray<cs.types.Char16>, index : Int, count : Int) : Int;
	function ReadAsync(buffer : cs.NativeArray<cs.types.Char16>, index : Int, count : Int) : cs.system.threading.tasks.Task_1<Int>;
	function ReadBlock(buffer : cs.NativeArray<cs.types.Char16>, index : Int, count : Int) : Int;
	function ReadBlockAsync(buffer : cs.NativeArray<cs.types.Char16>, index : Int, count : Int) : cs.system.threading.tasks.Task_1<Int>;
	function ReadLine() : String;
	function ReadLineAsync() : cs.system.threading.tasks.Task_1<String>;
	function ReadToEnd() : String;
	function ReadToEndAsync() : cs.system.threading.tasks.Task_1<String>;
	@:readOnly static var Null(default,never) : TextReader;
	static function Synchronized(reader : TextReader) : TextReader;
}
