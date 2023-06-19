package cs.system.text;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Text.EncoderFallback") extern class EncoderFallback {
	var MaxCharCount(get,never) : Int;
	@:protected private function new() : Void;
	function CreateFallbackBuffer() : EncoderFallbackBuffer;
	function get_MaxCharCount() : Int;
	static var ExceptionFallback(get,never) : EncoderFallback;
	static var ReplacementFallback(get,never) : EncoderFallback;
	static function get_ExceptionFallback() : EncoderFallback;
	static function get_ReplacementFallback() : EncoderFallback;
}
