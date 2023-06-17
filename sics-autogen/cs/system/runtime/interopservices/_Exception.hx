package cs.system.runtime.interopservices;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.InteropServices._Exception") extern interface _Exception {
	var HelpLink(get,set) : String;
	var InnerException(get,never) : cs.system.Exception;
	var Message(get,never) : String;
	var Source(get,set) : String;
	var StackTrace(get,never) : String;
	var TargetSite(get,never) : cs.system.reflection.MethodBase;
	function GetBaseException() : cs.system.Exception;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function GetType() : cs.system.Type;
	function ToString() : String;
	function get_HelpLink() : String;
	function get_InnerException() : cs.system.Exception;
	function get_Message() : String;
	function get_Source() : String;
	function get_StackTrace() : String;
	function get_TargetSite() : cs.system.reflection.MethodBase;
	function set_HelpLink(value : String) : String;
	function set_Source(value : String) : String;
}
