package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.Int64") extern final class Int64 extends ValueType implements IFormattable implements IConvertible implements IComparable implements IComparable_1<haxe.Int64> implements IEquatable_1<haxe.Int64> {
	@:overload(function(value : Dynamic) : Int {})
	function CompareTo(value : haxe.Int64) : Int;
	function GetTypeCode() : TypeCode;
	@:overload(function() : String {})
	@:overload(function(format : String, provider : IFormatProvider) : String {})
	@:overload(function(format : String) : String {})
	function ToString(provider : IFormatProvider) : String;
	@:readOnly static var MaxValue(default,never) : haxe.Int64;
	@:readOnly static var MinValue(default,never) : haxe.Int64;
	@:overload(function(s : String, provider : IFormatProvider) : haxe.Int64 {})
	@:overload(function(s : String, style : cs.system.globalization.NumberStyles, provider : IFormatProvider) : haxe.Int64 {})
	@:overload(function(s : String) : haxe.Int64 {})
	static function Parse(s : String, style : cs.system.globalization.NumberStyles) : haxe.Int64;
	@:overload(function(s : String, result : cs.Out<haxe.Int64>) : Bool {})
	static function TryParse(s : String, style : cs.system.globalization.NumberStyles, provider : IFormatProvider, result : cs.Out<haxe.Int64>) : Bool;
}
