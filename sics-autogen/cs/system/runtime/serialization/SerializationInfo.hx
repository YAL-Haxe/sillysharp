package cs.system.runtime.serialization;

@:nativeGen @:libType @:csNative @:native("System.Runtime.Serialization.SerializationInfo") extern final class SerializationInfo {
	var AssemblyName(get,set) : String;
	var FullTypeName(get,set) : String;
	var IsAssemblyNameSetExplicit(get,never) : Bool;
	var IsFullTypeNameSetExplicit(get,never) : Bool;
	var MemberCount(get,never) : Int;
	var ObjectType(get,never) : cs.system.Type;
	function new(type : cs.system.Type, converter : IFormatterConverter) : Void;
	@:overload(function(name : String, value : Dynamic, type : cs.system.Type) : Void {})
	@:overload(function(name : String, value : Dynamic) : Void {})
	@:overload(function(name : String, value : cs.types.UInt64) : Void {})
	@:overload(function(name : String, value : haxe.Int64) : Void {})
	@:overload(function(name : String, value : UInt) : Void {})
	@:overload(function(name : String, value : Single) : Void {})
	@:overload(function(name : String, value : cs.system.DateTime) : Void {})
	@:overload(function(name : String, value : cs.system.Decimal) : Void {})
	@:overload(function(name : String, value : Float) : Void {})
	@:overload(function(name : String, value : cs.types.Int8) : Void {})
	@:overload(function(name : String, value : cs.types.Char16) : Void {})
	@:overload(function(name : String, value : Bool) : Void {})
	@:overload(function(name : String, value : cs.types.UInt8) : Void {})
	@:overload(function(name : String, value : Int) : Void {})
	@:overload(function(name : String, value : cs.types.UInt16) : Void {})
	function AddValue(name : String, value : cs.types.Int16) : Void;
	function GetBoolean(name : String) : Bool;
	function GetByte(name : String) : cs.types.UInt8;
	function GetChar(name : String) : cs.types.Char16;
	function GetDateTime(name : String) : cs.system.DateTime;
	function GetDecimal(name : String) : cs.system.Decimal;
	function GetDouble(name : String) : Float;
	function GetEnumerator() : SerializationInfoEnumerator;
	function GetInt16(name : String) : cs.types.Int16;
	function GetInt32(name : String) : Int;
	function GetInt64(name : String) : haxe.Int64;
	function GetSByte(name : String) : cs.types.Int8;
	function GetSingle(name : String) : Single;
	function GetString(name : String) : String;
	function GetUInt16(name : String) : cs.types.UInt16;
	function GetUInt32(name : String) : UInt;
	function GetUInt64(name : String) : cs.types.UInt64;
	function GetValue(name : String, type : cs.system.Type) : Dynamic;
	function SetType(type : cs.system.Type) : Void;
	function get_AssemblyName() : String;
	function get_FullTypeName() : String;
	function get_IsAssemblyNameSetExplicit() : Bool;
	function get_IsFullTypeNameSetExplicit() : Bool;
	function get_MemberCount() : Int;
	function get_ObjectType() : cs.system.Type;
	function set_AssemblyName(value : String) : String;
	function set_FullTypeName(value : String) : String;
}
