package cs.system.runtime.compilerservices;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.CompilerServices.ICriticalNotifyCompletion") extern interface ICriticalNotifyCompletion extends INotifyCompletion {
	function UnsafeOnCompleted(continuation : cs.system.Action) : Void;
}
