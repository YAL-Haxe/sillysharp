package cs.system;

@:nativeGen @:libType @:csNative @:native("System.MissingMemberException") extern class MissingMemberException extends MemberAccessException {
	private var ClassName : String;
	private var MemberName : String;
	var Message(get,never) : String;
	private var Signature : cs.NativeArray<cs.types.UInt8>;
	@:overload(function() : Void {})
	@:overload(function(className : String, memberName : String) : Void {})
	@:overload(function(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void {})
	@:overload(function(message : String, inner : Exception) : Void {})
	function new(message : String) : Void;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function get_Message() : String;
}
