package cs.system;

@:nativeGen @:libType @:csNative @:native("System.NullReferenceException") extern class NullReferenceException extends SystemException {
	@:overload(function() : Void {})
	@:overload(function(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void {})
	@:overload(function(message : String, innerException : Exception) : Void {})
	function new(message : String) : Void;
}
