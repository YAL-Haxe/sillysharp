package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.Uri.UriScheme") extern final class Uri_UriScheme extends ValueType {
	var defaultPort : Int;
	var delimiter : String;
	var scheme : String;
	function new(s : String, d : String, p : Int) : Void;
}
