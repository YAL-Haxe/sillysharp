package cs.system;

@:nativeGen @:libType @:csNative @:native("System.MemberAccessException") extern class MemberAccessException extends SystemException {
	@:overload(function() : Void {})
	@:overload(function(message : String, inner : Exception) : Void {})
	@:overload(function(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void {})
	function new(message : String) : Void;
}
