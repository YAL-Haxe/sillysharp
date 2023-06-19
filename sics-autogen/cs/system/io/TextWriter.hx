package cs.system.io;

@:nativeGen @:abstract @:libType @:csNative @:native("System.IO.TextWriter") extern class TextWriter extends cs.system.MarshalByRefObject implements cs.system.IDisposable {
	private var CoreNewLine : cs.NativeArray<cs.types.Char16>;
	var Encoding(get,never) : cs.system.text.Encoding;
	var FormatProvider(get,never) : cs.system.IFormatProvider;
	var NewLine(get,set) : String;
	@:overload(function() : Void {})
	@:protected private function new(formatProvider : cs.system.IFormatProvider) : Void;
	function Close() : Void;
	@:overload(function(disposing : Bool) : Void {})
	function Dispose() : Void;
	function Flush() : Void;
	function FlushAsync() : cs.system.threading.tasks.Task;
	@:overload(function(value : Bool) : Void {})
	@:overload(function(format : String, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : Void {})
	@:overload(function(format : String, arg0 : Dynamic, arg1 : Dynamic) : Void {})
	@:overload(function(buffer : cs.NativeArray<cs.types.Char16>, index : Int, count : Int) : Void {})
	@:overload(function(format : String, arg : cs.NativeArray<Dynamic>) : Void {})
	@:overload(function(format : String, arg0 : Dynamic) : Void {})
	@:overload(function(value : cs.types.UInt64) : Void {})
	@:overload(function(value : UInt) : Void {})
	@:overload(function(value : String) : Void {})
	@:overload(function(value : Single) : Void {})
	@:overload(function(value : Dynamic) : Void {})
	@:overload(function(value : haxe.Int64) : Void {})
	@:overload(function(value : Int) : Void {})
	@:overload(function(value : Float) : Void {})
	@:overload(function(value : cs.system.Decimal) : Void {})
	@:overload(function(buffer : cs.NativeArray<cs.types.Char16>) : Void {})
	function Write(value : cs.types.Char16) : Void;
	@:overload(function(value : cs.types.Char16) : cs.system.threading.tasks.Task {})
	@:overload(function(value : String) : cs.system.threading.tasks.Task {})
	@:overload(function(buffer : cs.NativeArray<cs.types.Char16>, index : Int, count : Int) : cs.system.threading.tasks.Task {})
	function WriteAsync(buffer : cs.NativeArray<cs.types.Char16>) : cs.system.threading.tasks.Task;
	@:overload(function() : Void {})
	@:overload(function(format : String, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : Void {})
	@:overload(function(format : String, arg0 : Dynamic, arg1 : Dynamic) : Void {})
	@:overload(function(buffer : cs.NativeArray<cs.types.Char16>, index : Int, count : Int) : Void {})
	@:overload(function(format : String, arg : cs.NativeArray<Dynamic>) : Void {})
	@:overload(function(format : String, arg0 : Dynamic) : Void {})
	@:overload(function(value : cs.types.UInt64) : Void {})
	@:overload(function(value : UInt) : Void {})
	@:overload(function(value : String) : Void {})
	@:overload(function(value : Single) : Void {})
	@:overload(function(value : Dynamic) : Void {})
	@:overload(function(value : haxe.Int64) : Void {})
	@:overload(function(value : Int) : Void {})
	@:overload(function(value : Float) : Void {})
	@:overload(function(value : cs.system.Decimal) : Void {})
	@:overload(function(buffer : cs.NativeArray<cs.types.Char16>) : Void {})
	@:overload(function(value : cs.types.Char16) : Void {})
	function WriteLine(value : Bool) : Void;
	@:overload(function() : cs.system.threading.tasks.Task {})
	@:overload(function(value : String) : cs.system.threading.tasks.Task {})
	@:overload(function(buffer : cs.NativeArray<cs.types.Char16>, index : Int, count : Int) : cs.system.threading.tasks.Task {})
	@:overload(function(buffer : cs.NativeArray<cs.types.Char16>) : cs.system.threading.tasks.Task {})
	function WriteLineAsync(value : cs.types.Char16) : cs.system.threading.tasks.Task;
	function get_Encoding() : cs.system.text.Encoding;
	function get_FormatProvider() : cs.system.IFormatProvider;
	function get_NewLine() : String;
	function set_NewLine(value : String) : String;
	@:readOnly static var Null(default,never) : TextWriter;
	static function Synchronized(writer : TextWriter) : TextWriter;
}
