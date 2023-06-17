package cs.system;

@:nativeGen @:libType @:csNative @:native("System.ArgumentException") extern class ArgumentException extends SystemException {
	var Message(get,never) : String;
	var ParamName(get,never) : String;
	@:overload(function() : Void {})
	@:overload(function(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void {})
	@:overload(function(message : String, paramName : String, innerException : Exception) : Void {})
	@:overload(function(message : String, paramName : String) : Void {})
	@:overload(function(message : String, innerException : Exception) : Void {})
	function new(message : String) : Void;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function get_Message() : String;
	function get_ParamName() : String;
}
