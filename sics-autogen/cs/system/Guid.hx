package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.Guid") extern final class Guid extends ValueType implements IFormattable implements IComparable implements IComparable_1<Guid> implements IEquatable_1<Guid> {
	@:overload(function(b : cs.NativeArray<cs.types.UInt8>) : Void {})
	@:overload(function(a : UInt, b : cs.types.UInt16, c : cs.types.UInt16, d : cs.types.UInt8, e : cs.types.UInt8, f : cs.types.UInt8, g : cs.types.UInt8, h : cs.types.UInt8, i : cs.types.UInt8, j : cs.types.UInt8, k : cs.types.UInt8) : Void {})
	@:overload(function(a : Int, b : cs.types.Int16, c : cs.types.Int16, d : cs.types.UInt8, e : cs.types.UInt8, f : cs.types.UInt8, g : cs.types.UInt8, h : cs.types.UInt8, i : cs.types.UInt8, j : cs.types.UInt8, k : cs.types.UInt8) : Void {})
	@:overload(function(a : Int, b : cs.types.Int16, c : cs.types.Int16, d : cs.NativeArray<cs.types.UInt8>) : Void {})
	function new(g : String) : Void;
	@:overload(function(value : Dynamic) : Int {})
	function CompareTo(value : Guid) : Int;
	function ToByteArray() : cs.NativeArray<cs.types.UInt8>;
	@:overload(function() : String {})
	@:overload(function(format : String, provider : IFormatProvider) : String {})
	function ToString(format : String) : String;
	@:readOnly static var Empty(default,never) : Guid;
	static function NewGuid() : Guid;
	static function Parse(input : String) : Guid;
	static function ParseExact(input : String, format : String) : Guid;
	static function TryParse(input : String, result : cs.Out<Guid>) : Bool;
	static function TryParseExact(input : String, format : String, result : cs.Out<Guid>) : Bool;
	static function op_Equality(a : Guid, b : Guid) : Bool;
	static function op_Inequality(a : Guid, b : Guid) : Bool;
}
