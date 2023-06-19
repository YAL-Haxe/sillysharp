package cs.system.io;

@:nativeGen @:libType @:csNative @:native("System.IO.TextReader.NullTextReader") extern final class TextReader_NullTextReader extends TextReader {
	function new() : Void;
	function ReadLine() : String;
	function ReadToEnd() : String;
}
