package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.IntPtr") extern final class IntPtr extends ValueType implements cs.system.runtime.serialization.ISerializable {
	@:overload(function(value : Int) : Void {})
	function new(value : haxe.Int64) : Void;
	function ToInt32() : Int;
	function ToInt64() : haxe.Int64;
	@:overload(function() : String {})
	function ToString(format : String) : String;
	static var Size(get,never) : Int;
	@:readOnly static var Zero(default,never) : IntPtr;
	static function Add(pointer : IntPtr, offset : Int) : IntPtr;
	static function Subtract(pointer : IntPtr, offset : Int) : IntPtr;
	static function get_Size() : Int;
	static function op_Addition(pointer : IntPtr, offset : Int) : IntPtr;
	static function op_Equality(value1 : IntPtr, value2 : IntPtr) : Bool;
	@:overload(function(value : Int) : IntPtr {})
	static function op_Explicit(value : haxe.Int64) : IntPtr;
	static function op_Inequality(value1 : IntPtr, value2 : IntPtr) : Bool;
	static function op_Subtraction(pointer : IntPtr, offset : Int) : IntPtr;
}
