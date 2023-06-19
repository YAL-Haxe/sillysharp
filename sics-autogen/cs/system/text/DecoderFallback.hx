package cs.system.text;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Text.DecoderFallback") extern class DecoderFallback {
	var MaxCharCount(get,never) : Int;
	@:protected private function new() : Void;
	function CreateFallbackBuffer() : DecoderFallbackBuffer;
	function get_MaxCharCount() : Int;
	static var ExceptionFallback(get,never) : DecoderFallback;
	static var ReplacementFallback(get,never) : DecoderFallback;
	static function get_ExceptionFallback() : DecoderFallback;
	static function get_ReplacementFallback() : DecoderFallback;
}
