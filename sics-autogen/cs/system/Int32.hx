package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.Int32") extern final class Int32 extends ValueType implements IFormattable implements IConvertible implements IComparable implements IComparable_1<Int> implements IEquatable_1<Int> {
	@:overload(function(value : Dynamic) : Int {})
	function CompareTo(value : Int) : Int;
	function GetTypeCode() : TypeCode;
	@:overload(function() : String {})
	@:overload(function(format : String, provider : IFormatProvider) : String {})
	@:overload(function(format : String) : String {})
	function ToString(provider : IFormatProvider) : String;
	@:readOnly static var MaxValue(default,never) : Int;
	@:readOnly static var MinValue(default,never) : Int;
	@:overload(function(s : String, provider : IFormatProvider) : Int {})
	@:overload(function(s : String, style : cs.system.globalization.NumberStyles, provider : IFormatProvider) : Int {})
	@:overload(function(s : String) : Int {})
	static function Parse(s : String, style : cs.system.globalization.NumberStyles) : Int;
	@:overload(function(s : String, result : cs.Out<Int>) : Bool {})
	static function TryParse(s : String, style : cs.system.globalization.NumberStyles, provider : IFormatProvider, result : cs.Out<Int>) : Bool;
}
