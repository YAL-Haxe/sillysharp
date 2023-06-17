package cs.system.runtime.remoting.messaging;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.Remoting.Messaging.IMessageSink") extern interface IMessageSink {
	var NextSink(get,never) : IMessageSink;
	function AsyncProcessMessage(msg : IMessage, replySink : IMessageSink) : IMessageCtrl;
	function SyncProcessMessage(msg : IMessage) : IMessage;
	function get_NextSink() : IMessageSink;
}
