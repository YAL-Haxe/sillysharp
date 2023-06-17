package cs.system.runtime.compilerservices;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.CompilerServices.INotifyCompletion") extern interface INotifyCompletion {
	function OnCompleted(continuation : cs.system.Action) : Void;
}
