package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.IFormatProvider") extern interface IFormatProvider {
	function GetFormat(formatType : Type) : Dynamic;
}
