package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.IConvertible") extern interface IConvertible {
	function GetTypeCode() : TypeCode;
	function ToBoolean(provider : IFormatProvider) : Bool;
	function ToByte(provider : IFormatProvider) : cs.types.UInt8;
	function ToChar(provider : IFormatProvider) : cs.types.Char16;
	function ToDateTime(provider : IFormatProvider) : DateTime;
	function ToDecimal(provider : IFormatProvider) : Decimal;
	function ToDouble(provider : IFormatProvider) : Float;
	function ToInt16(provider : IFormatProvider) : cs.types.Int16;
	function ToInt32(provider : IFormatProvider) : Int;
	function ToInt64(provider : IFormatProvider) : haxe.Int64;
	function ToSByte(provider : IFormatProvider) : cs.types.Int8;
	function ToSingle(provider : IFormatProvider) : Single;
	function ToString(provider : IFormatProvider) : String;
	function ToType(conversionType : Type, provider : IFormatProvider) : Dynamic;
	function ToUInt16(provider : IFormatProvider) : cs.types.UInt16;
	function ToUInt32(provider : IFormatProvider) : UInt;
	function ToUInt64(provider : IFormatProvider) : cs.types.UInt64;
}
