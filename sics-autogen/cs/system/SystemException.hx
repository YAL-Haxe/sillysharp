package cs.system;

@:nativeGen @:libType @:csNative @:native("System.SystemException") extern class SystemException extends Exception {
	@:overload(function() : Void {})
	@:overload(function(message : String, innerException : Exception) : Void {})
	@:overload(function(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void {})
	function new(message : String) : Void;
}
