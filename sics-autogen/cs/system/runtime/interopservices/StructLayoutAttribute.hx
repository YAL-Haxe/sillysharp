package cs.system.runtime.interopservices;

@:nativeGen @:libType @:csNative @:native("System.Runtime.InteropServices.StructLayoutAttribute") extern final class StructLayoutAttribute extends cs.system.Attribute {
	var CharSet : CharSet;
	var Pack : Int;
	var Size : Int;
	var Value(get,never) : LayoutKind;
	@:overload(function(layoutKind : cs.types.Int16) : Void {})
	function new(layoutKind : LayoutKind) : Void;
	function get_Value() : LayoutKind;
}
