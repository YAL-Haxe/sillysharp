package cs.system.text;

@:nativeGen @:libType @:csNative @:native("System.Text.StringBuilder") extern final class StringBuilder implements cs.system.runtime.serialization.ISerializable {
	var Capacity(get,set) : Int;
	var Length(get,set) : Int;
	var MaxCapacity(get,never) : Int;
	@:overload(function(value : String, startIndex : Int, length : Int, capacity : Int) : Void {})
	@:overload(function(value : String, capacity : Int) : Void {})
	@:overload(function(value : String) : Void {})
	@:overload(function(capacity : Int, maxCapacity : Int) : Void {})
	@:overload(function(capacity : Int) : Void {})
	function new() : Void;
	@:overload(function(value : cs.NativeArray<cs.types.Char16>) : StringBuilder {})
	@:overload(function(value : String, startIndex : Int, count : Int) : StringBuilder {})
	@:overload(function(value : cs.NativeArray<cs.types.Char16>, startIndex : Int, charCount : Int) : StringBuilder {})
	@:overload(function(value : cs.types.Char16, repeatCount : Int) : StringBuilder {})
	@:overload(function(value : cs.types.Char16) : StringBuilder {})
	@:overload(function(value : cs.types.UInt64) : StringBuilder {})
	@:overload(function(value : UInt) : StringBuilder {})
	@:overload(function(value : cs.types.UInt16) : StringBuilder {})
	@:overload(function(value : Single) : StringBuilder {})
	@:overload(function(value : cs.types.Int8) : StringBuilder {})
	@:overload(function(value : Dynamic) : StringBuilder {})
	@:overload(function(value : haxe.Int64) : StringBuilder {})
	@:overload(function(value : Int) : StringBuilder {})
	@:overload(function(value : cs.types.Int16) : StringBuilder {})
	@:overload(function(value : Float) : StringBuilder {})
	@:overload(function(value : cs.system.Decimal) : StringBuilder {})
	@:overload(function(value : cs.types.UInt8) : StringBuilder {})
	@:overload(function(value : Bool) : StringBuilder {})
	function Append(value : String) : StringBuilder;
	@:overload(function(format : String, args : cs.NativeArray<Dynamic>) : StringBuilder {})
	@:overload(function(format : String, arg0 : Dynamic, arg1 : Dynamic, arg2 : Dynamic) : StringBuilder {})
	@:overload(function(format : String, arg0 : Dynamic, arg1 : Dynamic) : StringBuilder {})
	@:overload(function(format : String, arg0 : Dynamic) : StringBuilder {})
	function AppendFormat(provider : cs.system.IFormatProvider, format : String, args : cs.NativeArray<Dynamic>) : StringBuilder;
	@:overload(function() : StringBuilder {})
	function AppendLine(value : String) : StringBuilder;
	function Clear() : StringBuilder;
	function CopyTo(sourceIndex : Int, destination : cs.NativeArray<cs.types.Char16>, destinationIndex : Int, count : Int) : Void;
	function EnsureCapacity(capacity : Int) : Int;
	@:overload(function(index : Int, value : cs.NativeArray<cs.types.Char16>) : StringBuilder {})
	@:overload(function(index : Int, value : cs.NativeArray<cs.types.Char16>, startIndex : Int, charCount : Int) : StringBuilder {})
	@:overload(function(index : Int, value : String, count : Int) : StringBuilder {})
	@:overload(function(index : Int, value : cs.types.UInt64) : StringBuilder {})
	@:overload(function(index : Int, value : UInt) : StringBuilder {})
	@:overload(function(index : Int, value : cs.types.UInt16) : StringBuilder {})
	@:overload(function(index : Int, value : Single) : StringBuilder {})
	@:overload(function(index : Int, value : cs.types.Int8) : StringBuilder {})
	@:overload(function(index : Int, value : Dynamic) : StringBuilder {})
	@:overload(function(index : Int, value : haxe.Int64) : StringBuilder {})
	@:overload(function(index : Int, value : Int) : StringBuilder {})
	@:overload(function(index : Int, value : cs.types.Int16) : StringBuilder {})
	@:overload(function(index : Int, value : Float) : StringBuilder {})
	@:overload(function(index : Int, value : cs.system.Decimal) : StringBuilder {})
	@:overload(function(index : Int, value : cs.types.Char16) : StringBuilder {})
	@:overload(function(index : Int, value : cs.types.UInt8) : StringBuilder {})
	@:overload(function(index : Int, value : Bool) : StringBuilder {})
	function Insert(index : Int, value : String) : StringBuilder;
	function Remove(startIndex : Int, length : Int) : StringBuilder;
	@:overload(function(oldChar : cs.types.Char16, newChar : cs.types.Char16) : StringBuilder {})
	@:overload(function(oldValue : String, newValue : String, startIndex : Int, count : Int) : StringBuilder {})
	@:overload(function(oldValue : String, newValue : String) : StringBuilder {})
	function Replace(oldChar : cs.types.Char16, newChar : cs.types.Char16, startIndex : Int, count : Int) : StringBuilder;
	@:overload(function() : String {})
	function ToString(startIndex : Int, length : Int) : String;
	function get_Capacity() : Int;
	function get_Chars(index : Int) : cs.types.Char16;
	function get_Length() : Int;
	function get_MaxCapacity() : Int;
	function set_Capacity(value : Int) : Int;
	function set_Chars(index : Int, value : cs.types.Char16) : Void;
	function set_Length(value : Int) : Int;
}
