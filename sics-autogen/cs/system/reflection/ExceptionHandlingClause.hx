package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.ExceptionHandlingClause") extern class ExceptionHandlingClause {
	var CatchType(get,never) : cs.system.Type;
	var FilterOffset(get,never) : Int;
	var Flags(get,never) : ExceptionHandlingClauseOptions;
	var HandlerLength(get,never) : Int;
	var HandlerOffset(get,never) : Int;
	var TryLength(get,never) : Int;
	var TryOffset(get,never) : Int;
	@:protected private function new() : Void;
	function ToString() : String;
	function get_CatchType() : cs.system.Type;
	function get_FilterOffset() : Int;
	function get_Flags() : ExceptionHandlingClauseOptions;
	function get_HandlerLength() : Int;
	function get_HandlerOffset() : Int;
	function get_TryLength() : Int;
	function get_TryOffset() : Int;
}
