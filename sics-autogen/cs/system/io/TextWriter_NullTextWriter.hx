package cs.system.io;

@:nativeGen @:libType @:csNative @:native("System.IO.TextWriter.NullTextWriter") extern final class TextWriter_NullTextWriter extends TextWriter {
	var Encoding(get,never) : cs.system.text.Encoding;
	function new() : Void;
	@:overload(function(s : String) : Void {})
	@:overload(function(value : cs.NativeArray<cs.types.Char16>, index : Int, count : Int) : Void {})
	function Write(value : cs.types.Char16) : Void;
	function get_Encoding() : cs.system.text.Encoding;
}
