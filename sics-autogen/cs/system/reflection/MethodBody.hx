package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.MethodBody") extern class MethodBody {
	var ExceptionHandlingClauses(get,never) : cs.system.collections.generic.IList_1<ExceptionHandlingClause>;
	var InitLocals(get,never) : Bool;
	var LocalSignatureMetadataToken(get,never) : Int;
	var LocalVariables(get,never) : cs.system.collections.generic.IList_1<LocalVariableInfo>;
	var MaxStackSize(get,never) : Int;
	@:protected private function new() : Void;
	function GetILAsByteArray() : cs.NativeArray<cs.types.UInt8>;
	function get_ExceptionHandlingClauses() : cs.system.collections.generic.IList_1<ExceptionHandlingClause>;
	function get_InitLocals() : Bool;
	function get_LocalSignatureMetadataToken() : Int;
	function get_LocalVariables() : cs.system.collections.generic.IList_1<LocalVariableInfo>;
	function get_MaxStackSize() : Int;
}
