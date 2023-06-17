package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.UIntPtr") extern final class UIntPtr extends ValueType implements cs.system.runtime.serialization.ISerializable {
	@:overload(function(value : cs.types.UInt64) : Void {})
	function new(value : UInt) : Void;
	function ToString() : String;
	function ToUInt32() : UInt;
	function ToUInt64() : cs.types.UInt64;
	static var Size(get,never) : Int;
	@:readOnly static var Zero(default,never) : UIntPtr;
	static function Add(pointer : UIntPtr, offset : Int) : UIntPtr;
	static function Subtract(pointer : UIntPtr, offset : Int) : UIntPtr;
	static function get_Size() : Int;
	static function op_Addition(pointer : UIntPtr, offset : Int) : UIntPtr;
	static function op_Equality(value1 : UIntPtr, value2 : UIntPtr) : Bool;
	@:overload(function(value : cs.types.UInt64) : UIntPtr {})
	static function op_Explicit(value : UInt) : UIntPtr;
	static function op_Inequality(value1 : UIntPtr, value2 : UIntPtr) : Bool;
	static function op_Subtraction(pointer : UIntPtr, offset : Int) : UIntPtr;
}
