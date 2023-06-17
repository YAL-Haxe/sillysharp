package cs.system.runtime.remoting;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.Remoting.IEnvoyInfo") extern interface IEnvoyInfo {
	var EnvoySinks(get,set) : cs.system.runtime.remoting.messaging.IMessageSink;
	function get_EnvoySinks() : cs.system.runtime.remoting.messaging.IMessageSink;
	function set_EnvoySinks(value : cs.system.runtime.remoting.messaging.IMessageSink) : cs.system.runtime.remoting.messaging.IMessageSink;
}
