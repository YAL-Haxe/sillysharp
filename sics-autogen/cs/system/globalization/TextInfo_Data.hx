package cs.system.globalization;

@:nativeGen @:struct @:libType @:csNative @:native("System.Globalization.TextInfo.Data") extern final class TextInfo_Data extends cs.system.ValueType {
	var ansi : Int;
	var ebcdic : Int;
	var list_sep : cs.types.UInt8;
	var mac : Int;
	var oem : Int;
	var right_to_left : Bool;
}
