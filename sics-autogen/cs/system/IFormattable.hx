package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.IFormattable") extern interface IFormattable {
	function ToString(format : String, formatProvider : IFormatProvider) : String;
}
