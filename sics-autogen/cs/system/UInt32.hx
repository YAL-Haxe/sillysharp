package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.UInt32") extern final class UInt32 extends ValueType implements IFormattable implements IConvertible implements IComparable implements IComparable_1<UInt> implements IEquatable_1<UInt> {
	@:overload(function(value : Dynamic) : Int {})
	function CompareTo(value : UInt) : Int;
	function GetTypeCode() : TypeCode;
	@:overload(function() : String {})
	@:overload(function(format : String, provider : IFormatProvider) : String {})
	@:overload(function(format : String) : String {})
	function ToString(provider : IFormatProvider) : String;
	@:readOnly static var MaxValue(default,never) : UInt;
	@:readOnly static var MinValue(default,never) : UInt;
	@:overload(function(s : String) : UInt {})
	@:overload(function(s : String, style : cs.system.globalization.NumberStyles) : UInt {})
	@:overload(function(s : String, provider : IFormatProvider) : UInt {})
	static function Parse(s : String, style : cs.system.globalization.NumberStyles, provider : IFormatProvider) : UInt;
	@:overload(function(s : String, result : cs.Out<UInt>) : Bool {})
	static function TryParse(s : String, style : cs.system.globalization.NumberStyles, provider : IFormatProvider, result : cs.Out<UInt>) : Bool;
}
