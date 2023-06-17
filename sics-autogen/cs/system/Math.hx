package cs.system;

/**
 * Same as the original but I had to move Float overloads for Min/Max up because otherwise
 * the compiler picks the UInt64 overload and gets upset.
 */
@:nativeGen @:abstract @:libType @:csNative @:native("System.Math") extern final class Math {
	@:readOnly static var E(default,never) : Float;
	@:readOnly static var PI(default,never) : Float;
	@:overload(function(value : Decimal) : Decimal {})
	@:overload(function(value : cs.types.Int16) : cs.types.Int16 {})
	@:overload(function(value : cs.types.Int8) : cs.types.Int8 {})
	@:overload(function(value : haxe.Int64) : haxe.Int64 {})
	@:overload(function(value : Int) : Int {})
	@:overload(function(value : Single) : Single {})
	static function Abs(value : Float) : Float;
	static function Acos(d : Float) : Float;
	static function Asin(d : Float) : Float;
	static function Atan(d : Float) : Float;
	static function Atan2(y : Float, x : Float) : Float;
	static function BigMul(a : Int, b : Int) : haxe.Int64;
	@:overload(function(d : Decimal) : Decimal {})
	static function Ceiling(a : Float) : Float;
	static function Cos(d : Float) : Float;
	static function Cosh(value : Float) : Float;
	@:overload(function(a : Int, b : Int, result : cs.Out<Int>) : Int {})
	static function DivRem(a : haxe.Int64, b : haxe.Int64, result : cs.Out<haxe.Int64>) : haxe.Int64;
	static function Exp(d : Float) : Float;
	@:overload(function(d : Float) : Float {})
	static function Floor(d : Decimal) : Decimal;
	static function IEEERemainder(x : Float, y : Float) : Float;
	@:overload(function(a : Float, newBase : Float) : Float {})
	static function Log(d : Float) : Float;
	static function Log10(d : Float) : Float;
	@:overload(function(val1 : Int, val2 : Int) : Int {})
	@:overload(function(val1 : Single, val2 : Single) : Single {})
	@:overload(function(val1 : Float, val2 : Float) : Float {})
	@:overload(function(val1 : cs.types.UInt8, val2 : cs.types.UInt8) : cs.types.UInt8 {})
	@:overload(function(val1 : cs.types.UInt16, val2 : cs.types.UInt16) : cs.types.UInt16 {})
	@:overload(function(val1 : cs.types.UInt64, val2 : cs.types.UInt64) : cs.types.UInt64 {})
	@:overload(function(val1 : UInt, val2 : UInt) : UInt {})
	@:overload(function(val1 : cs.types.Int16, val2 : cs.types.Int16) : cs.types.Int16 {})
	@:overload(function(val1 : cs.types.Int8, val2 : cs.types.Int8) : cs.types.Int8 {})
	@:overload(function(val1 : haxe.Int64, val2 : haxe.Int64) : haxe.Int64 {})
	static function Max(val1 : Decimal, val2 : Decimal) : Decimal;
	@:overload(function(val1 : Int, val2 : Int) : Int {})
	@:overload(function(val1 : Single, val2 : Single) : Single {})
	@:overload(function(val1 : Float, val2 : Float) : Float {})
	@:overload(function(val1 : cs.types.UInt8, val2 : cs.types.UInt8) : cs.types.UInt8 {})
	@:overload(function(val1 : cs.types.UInt16, val2 : cs.types.UInt16) : cs.types.UInt16 {})
	@:overload(function(val1 : cs.types.UInt64, val2 : cs.types.UInt64) : cs.types.UInt64 {})
	@:overload(function(val1 : UInt, val2 : UInt) : UInt {})
	@:overload(function(val1 : cs.types.Int16, val2 : cs.types.Int16) : cs.types.Int16 {})
	@:overload(function(val1 : cs.types.Int8, val2 : cs.types.Int8) : cs.types.Int8 {})
	@:overload(function(val1 : haxe.Int64, val2 : haxe.Int64) : haxe.Int64 {})
	static function Min(val1 : Decimal, val2 : Decimal) : Decimal;
	static function Pow(x : Float, y : Float) : Float;
	@:overload(function(d : Decimal) : Decimal {})
	@:overload(function(value : Float, digits : Int, mode : MidpointRounding) : Float {})
	@:overload(function(value : Float, mode : MidpointRounding) : Float {})
	@:overload(function(value : Float, digits : Int) : Float {})
	@:overload(function(a : Float) : Float {})
	@:overload(function(d : Decimal, decimals : Int, mode : MidpointRounding) : Decimal {})
	@:overload(function(d : Decimal, mode : MidpointRounding) : Decimal {})
	static function Round(d : Decimal, decimals : Int) : Decimal;
	@:overload(function(value : Decimal) : Int {})
	@:overload(function(value : cs.types.Int16) : Int {})
	@:overload(function(value : cs.types.Int8) : Int {})
	@:overload(function(value : haxe.Int64) : Int {})
	@:overload(function(value : Int) : Int {})
	@:overload(function(value : Single) : Int {})
	static function Sign(value : Float) : Int;
	static function Sin(a : Float) : Float;
	static function Sinh(value : Float) : Float;
	static function Sqrt(d : Float) : Float;
	static function Tan(a : Float) : Float;
	static function Tanh(value : Float) : Float;
	@:overload(function(d : Float) : Float {})
	static function Truncate(d : Decimal) : Decimal;
}
