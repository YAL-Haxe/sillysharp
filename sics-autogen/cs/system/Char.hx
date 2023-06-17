package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.Char") extern final class Char extends ValueType implements IComparable implements IConvertible implements IComparable_1<cs.types.Char16> implements IEquatable_1<cs.types.Char16> {
	@:overload(function(value : Dynamic) : Int {})
	function CompareTo(value : cs.types.Char16) : Int;
	function GetTypeCode() : TypeCode;
	@:overload(function() : String {})
	@:overload(function(provider : IFormatProvider) : String {})
	@:readOnly static var MaxValue(default,never) : cs.types.Char16;
	@:readOnly static var MinValue(default,never) : cs.types.Char16;
	static function ConvertFromUtf32(utf32 : Int) : String;
	@:overload(function(highSurrogate : cs.types.Char16, lowSurrogate : cs.types.Char16) : Int {})
	static function ConvertToUtf32(s : String, index : Int) : Int;
	@:overload(function(c : cs.types.Char16) : Float {})
	static function GetNumericValue(s : String, index : Int) : Float;
	@:overload(function(c : cs.types.Char16) : cs.system.globalization.UnicodeCategory {})
	static function GetUnicodeCategory(s : String, index : Int) : cs.system.globalization.UnicodeCategory;
	@:overload(function(c : cs.types.Char16) : Bool {})
	static function IsControl(s : String, index : Int) : Bool;
	@:overload(function(c : cs.types.Char16) : Bool {})
	static function IsDigit(s : String, index : Int) : Bool;
	@:overload(function(c : cs.types.Char16) : Bool {})
	static function IsHighSurrogate(s : String, index : Int) : Bool;
	@:overload(function(c : cs.types.Char16) : Bool {})
	static function IsLetter(s : String, index : Int) : Bool;
	@:overload(function(c : cs.types.Char16) : Bool {})
	static function IsLetterOrDigit(s : String, index : Int) : Bool;
	@:overload(function(c : cs.types.Char16) : Bool {})
	static function IsLowSurrogate(s : String, index : Int) : Bool;
	@:overload(function(c : cs.types.Char16) : Bool {})
	static function IsLower(s : String, index : Int) : Bool;
	@:overload(function(c : cs.types.Char16) : Bool {})
	static function IsNumber(s : String, index : Int) : Bool;
	@:overload(function(c : cs.types.Char16) : Bool {})
	static function IsPunctuation(s : String, index : Int) : Bool;
	@:overload(function(c : cs.types.Char16) : Bool {})
	static function IsSeparator(s : String, index : Int) : Bool;
	@:overload(function(c : cs.types.Char16) : Bool {})
	static function IsSurrogate(s : String, index : Int) : Bool;
	@:overload(function(highSurrogate : cs.types.Char16, lowSurrogate : cs.types.Char16) : Bool {})
	static function IsSurrogatePair(s : String, index : Int) : Bool;
	@:overload(function(c : cs.types.Char16) : Bool {})
	static function IsSymbol(s : String, index : Int) : Bool;
	@:overload(function(c : cs.types.Char16) : Bool {})
	static function IsUpper(s : String, index : Int) : Bool;
	@:overload(function(c : cs.types.Char16) : Bool {})
	static function IsWhiteSpace(s : String, index : Int) : Bool;
	static function Parse(s : String) : cs.types.Char16;
	@:overload(function(c : cs.types.Char16) : cs.types.Char16 {})
	static function ToLower(c : cs.types.Char16, culture : cs.system.globalization.CultureInfo) : cs.types.Char16;
	static function ToLowerInvariant(c : cs.types.Char16) : cs.types.Char16;
	@:native("ToString") static function _ToString(c : cs.types.Char16) : String;
	static function ToString(c : cs.types.Char16) : String;
	@:overload(function(c : cs.types.Char16) : cs.types.Char16 {})
	static function ToUpper(c : cs.types.Char16, culture : cs.system.globalization.CultureInfo) : cs.types.Char16;
	static function ToUpperInvariant(c : cs.types.Char16) : cs.types.Char16;
	static function TryParse(s : String, result : cs.Out<cs.types.Char16>) : Bool;
}
