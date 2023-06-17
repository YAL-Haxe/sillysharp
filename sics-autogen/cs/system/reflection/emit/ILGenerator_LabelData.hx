package cs.system.reflection.emit;

@:nativeGen @:struct @:libType @:csNative @:native("System.Reflection.Emit.ILGenerator.LabelData") extern final class ILGenerator_LabelData extends cs.system.ValueType {
	var addr : Int;
	var maxStack : Int;
	function new(addr : Int, maxStack : Int) : Void;
}
