package cs.system.runtime.remoting.messaging;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.Remoting.Messaging.IMessageCtrl") extern interface IMessageCtrl {
	function Cancel(msToCancel : Int) : Void;
}
