package cs.system.reflection.emit;

@:nativeGen @:struct @:libType @:csNative @:native("System.Reflection.Emit.OpCode") extern final class OpCode extends cs.system.ValueType {
	var FlowControl(get,never) : FlowControl;
	var Name(get,never) : String;
	var OpCodeType(get,never) : OpCodeType;
	var OperandType(get,never) : OperandType;
	var Size(get,never) : Int;
	var StackBehaviourPop(get,never) : StackBehaviour;
	var StackBehaviourPush(get,never) : StackBehaviour;
	var Value(get,never) : cs.types.Int16;
	function ToString() : String;
	function get_FlowControl() : FlowControl;
	function get_Name() : String;
	function get_OpCodeType() : OpCodeType;
	function get_OperandType() : OperandType;
	function get_Size() : Int;
	function get_StackBehaviourPop() : StackBehaviour;
	function get_StackBehaviourPush() : StackBehaviour;
	function get_Value() : cs.types.Int16;
	static function op_Equality(a : OpCode, b : OpCode) : Bool;
	static function op_Inequality(a : OpCode, b : OpCode) : Bool;
}
