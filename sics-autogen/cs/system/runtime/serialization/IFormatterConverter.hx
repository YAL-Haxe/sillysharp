package cs.system.runtime.serialization;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.Serialization.IFormatterConverter") extern interface IFormatterConverter {
	@:overload(function(value : Dynamic, type : cs.system.Type) : Dynamic {})
	function Convert(value : Dynamic, typeCode : cs.system.TypeCode) : Dynamic;
	function ToBoolean(value : Dynamic) : Bool;
	function ToByte(value : Dynamic) : cs.types.UInt8;
	function ToChar(value : Dynamic) : cs.types.Char16;
	function ToDateTime(value : Dynamic) : cs.system.DateTime;
	function ToDecimal(value : Dynamic) : cs.system.Decimal;
	function ToDouble(value : Dynamic) : Float;
	function ToInt16(value : Dynamic) : cs.types.Int16;
	function ToInt32(value : Dynamic) : Int;
	function ToInt64(value : Dynamic) : haxe.Int64;
	function ToSByte(value : Dynamic) : cs.types.Int8;
	function ToSingle(value : Dynamic) : Single;
	function ToString(value : Dynamic) : String;
	function ToUInt16(value : Dynamic) : cs.types.UInt16;
	function ToUInt32(value : Dynamic) : UInt;
	function ToUInt64(value : Dynamic) : cs.types.UInt64;
}
