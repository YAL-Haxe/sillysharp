package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Console") extern final class Console {
	static var BackgroundColor(get,set) : ConsoleColor;
	static var BufferHeight(get,set) : Int;
	static var BufferWidth(get,set) : Int;
	@:event @:keep @:skipReflection private static var CancelKeyPress : ConsoleCancelEventHandler;
	static var CapsLock(get,never) : Bool;
	static var CursorLeft(get,set) : Int;
	static var CursorSize(get,set) : Int;
	static var CursorTop(get,set) : Int;
	static var CursorVisible(get,set) : Bool;
	static var Error(get,never) : cs.system.io.TextWriter;
	static var ForegroundColor(get,set) : ConsoleColor;
	static var In(get,never) : cs.system.io.TextReader;
	static var InputEncoding(get,set) : cs.system.text.Encoding;
	static var IsErrorRedirected(get,never) : Bool;
	static var IsInputRedirected(get,never) : Bool;
	static var IsOutputRedirected(get,never) : Bool;
	static var KeyAvailable(get,never) : Bool;
	static var LargestWindowHeight(get,never) : Int;
	static var LargestWindowWidth(get,never) : Int;
	static var NumberLock(get,never) : Bool;
	static var Out(get,never) : cs.system.io.TextWriter;
	static var OutputEncoding(get,set) : cs.system.text.Encoding;
	static var Title(get,set) : String;
	static var TreatControlCAsInput(get,set) : Bool;
	static var WindowHeight(get,set) : Int;
	static var WindowLeft(get,set) : Int;
	static var WindowTop(get,set) : Int;
	static var WindowWidth(get,set) : Int;
	@:overload(function() : Void {})
	static function Beep(frequency : Int, duration : Int) : Void;
	static function Clear() : Void;
	@:overload(function(sourceLeft : Int, sourceTop : Int, sourceWidth : Int, sourceHeight : Int, targetLeft : Int, targetTop : Int) : Void {})
	static function MoveBufferArea(sourceLeft : Int, sourceTop : Int, sourceWidth : Int, sourceHeight : Int, targetLeft : Int, targetTop : Int, sourceChar : cs.types.Char16, sourceForeColor : ConsoleColor, sourceBackColor : ConsoleColor) : Void;
	@:overload(function() : cs.system.io.Stream {})
	static function OpenStandardError(bufferSize : Int) : cs.system.io.Stream;
	@:overload(function() : cs.system.io.Stream {})
	static function OpenStandardInput(bufferSize : Int) : cs.system.io.Stream;
	@:overload(function() : cs.system.io.Stream {})
	static function OpenStandardOutput(bufferSize : Int) : cs.system.io.Stream;
	static function Read() : Int;
	@:overload(function() : ConsoleKeyInfo {})
	static function ReadKey(intercept : Bool) : ConsoleKeyInfo;
	static function ReadLine() : String;
	static function ResetColor() : Void;
	static function SetBufferSize(width : Int, height : Int) : Void;
	static function SetCursorPosition(left : Int, top : Int) : Void;
	static function SetError(newError : cs.system.io.TextWriter) : Void;
	static function SetIn(newIn : cs.system.io.TextReader) : Void;
	static function SetOut(newOut : cs.system.io.TextWriter) : Void;
	static function SetWindowPosition(left : Int, top : Int) : Void;
	static function SetWindowSize(width : Int, height : Int) : Void;
	@:overload(function(value : Bool) : Void {})
	@:overload(function(format : String, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : Void {})
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
	@:overload(function(value : Decimal) : Void {})
	@:overload(function(buffer : cs.NativeArray<cs.types.Char16>) : Void {})
	static function Write(value : cs.types.Char16) : Void;
	@:overload(function() : Void {})
	@:overload(function(format : String, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic, arg3 : Dynamic) : Void {})
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
	@:overload(function(value : Decimal) : Void {})
	@:overload(function(buffer : cs.NativeArray<cs.types.Char16>) : Void {})
	@:overload(function(value : cs.types.Char16) : Void {})
	static function WriteLine(value : Bool) : Void;
	static function add_CancelKeyPress(value : ConsoleCancelEventHandler) : Void;
	static function get_BackgroundColor() : ConsoleColor;
	static function get_BufferHeight() : Int;
	static function get_BufferWidth() : Int;
	static function get_CapsLock() : Bool;
	static function get_CursorLeft() : Int;
	static function get_CursorSize() : Int;
	static function get_CursorTop() : Int;
	static function get_CursorVisible() : Bool;
	static function get_Error() : cs.system.io.TextWriter;
	static function get_ForegroundColor() : ConsoleColor;
	static function get_In() : cs.system.io.TextReader;
	static function get_InputEncoding() : cs.system.text.Encoding;
	static function get_IsErrorRedirected() : Bool;
	static function get_IsInputRedirected() : Bool;
	static function get_IsOutputRedirected() : Bool;
	static function get_KeyAvailable() : Bool;
	static function get_LargestWindowHeight() : Int;
	static function get_LargestWindowWidth() : Int;
	static function get_NumberLock() : Bool;
	static function get_Out() : cs.system.io.TextWriter;
	static function get_OutputEncoding() : cs.system.text.Encoding;
	static function get_Title() : String;
	static function get_TreatControlCAsInput() : Bool;
	static function get_WindowHeight() : Int;
	static function get_WindowLeft() : Int;
	static function get_WindowTop() : Int;
	static function get_WindowWidth() : Int;
	static function remove_CancelKeyPress(value : ConsoleCancelEventHandler) : Void;
	static function set_BackgroundColor(value : ConsoleColor) : ConsoleColor;
	static function set_BufferHeight(value : Int) : Int;
	static function set_BufferWidth(value : Int) : Int;
	static function set_CursorLeft(value : Int) : Int;
	static function set_CursorSize(value : Int) : Int;
	static function set_CursorTop(value : Int) : Int;
	static function set_CursorVisible(value : Bool) : Bool;
	static function set_ForegroundColor(value : ConsoleColor) : ConsoleColor;
	static function set_InputEncoding(value : cs.system.text.Encoding) : cs.system.text.Encoding;
	static function set_OutputEncoding(value : cs.system.text.Encoding) : cs.system.text.Encoding;
	static function set_Title(value : String) : String;
	static function set_TreatControlCAsInput(value : Bool) : Bool;
	static function set_WindowHeight(value : Int) : Int;
	static function set_WindowLeft(value : Int) : Int;
	static function set_WindowTop(value : Int) : Int;
	static function set_WindowWidth(value : Int) : Int;
}
