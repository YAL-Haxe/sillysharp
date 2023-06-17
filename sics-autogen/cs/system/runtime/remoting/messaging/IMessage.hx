package cs.system.runtime.remoting.messaging;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.Remoting.Messaging.IMessage") extern interface IMessage {
	var Properties(get,never) : cs.system.collections.IDictionary;
	function get_Properties() : cs.system.collections.IDictionary;
}
