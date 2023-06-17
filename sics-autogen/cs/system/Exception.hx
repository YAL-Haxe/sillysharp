package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Exception") extern class Exception implements cs.system.runtime.serialization.ISerializable implements cs.system.runtime.interopservices._Exception {
	var Data(get,never) : cs.system.collections.IDictionary;
	var HResult(get,never) : Int;
	var HelpLink(get,set) : String;
	var InnerException(get,never) : Exception;
	var Message(get,never) : String;
	@:event @:keep @:skipReflection private var SerializeObjectState : EventHandler_1<cs.system.runtime.serialization.SafeSerializationEventArgs>;
	var Source(get,set) : String;
	var StackTrace(get,never) : String;
	var TargetSite(get,never) : cs.system.reflection.MethodBase;
	@:overload(function() : Void {})
	@:overload(function(message : String, innerException : Exception) : Void {})
	@:overload(function(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void {})
	function new(message : String) : Void;
	function GetBaseException() : Exception;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function GetType() : Type;
	function ToString() : String;
	@:protected private function add_SerializeObjectState(value : EventHandler_1<cs.system.runtime.serialization.SafeSerializationEventArgs>) : Void;
	function get_Data() : cs.system.collections.IDictionary;
	function get_HResult() : Int;
	function get_HelpLink() : String;
	function get_InnerException() : Exception;
	function get_Message() : String;
	function get_Source() : String;
	function get_StackTrace() : String;
	function get_TargetSite() : cs.system.reflection.MethodBase;
	@:protected private function remove_SerializeObjectState(value : EventHandler_1<cs.system.runtime.serialization.SafeSerializationEventArgs>) : Void;
	@:protected private function set_HResult(value : Int) : Int;
	function set_HelpLink(value : String) : String;
	function set_Source(value : String) : String;
}
