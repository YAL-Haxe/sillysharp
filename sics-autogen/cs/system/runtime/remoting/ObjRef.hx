package cs.system.runtime.remoting;

@:nativeGen @:libType @:csNative @:native("System.Runtime.Remoting.ObjRef") extern class ObjRef implements cs.system.runtime.serialization.IObjectReference implements cs.system.runtime.serialization.ISerializable {
	var ChannelInfo(get,set) : IChannelInfo;
	var EnvoyInfo(get,set) : IEnvoyInfo;
	var TypeInfo(get,set) : IRemotingTypeInfo;
	var URI(get,set) : String;
	@:overload(function() : Void {})
	@:overload(function(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void {})
	function new(o : cs.system.MarshalByRefObject, requestedType : cs.system.Type) : Void;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function GetRealObject(context : cs.system.runtime.serialization.StreamingContext) : Dynamic;
	function IsFromThisAppDomain() : Bool;
	function IsFromThisProcess() : Bool;
	function get_ChannelInfo() : IChannelInfo;
	function get_EnvoyInfo() : IEnvoyInfo;
	function get_TypeInfo() : IRemotingTypeInfo;
	function get_URI() : String;
	function set_ChannelInfo(value : IChannelInfo) : IChannelInfo;
	function set_EnvoyInfo(value : IEnvoyInfo) : IEnvoyInfo;
	function set_TypeInfo(value : IRemotingTypeInfo) : IRemotingTypeInfo;
	function set_URI(value : String) : String;
}
