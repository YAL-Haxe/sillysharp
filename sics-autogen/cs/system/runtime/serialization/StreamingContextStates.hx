package cs.system.runtime.serialization;

@:nativeGen @:native("System.Runtime.Serialization.StreamingContextStates") @:csNative extern enum StreamingContextStates {
	CrossProcess;
	CrossMachine;
	File;
	Persistence;
	Remoting;
	Other;
	Clone;
	CrossAppDomain;
	All;
}
