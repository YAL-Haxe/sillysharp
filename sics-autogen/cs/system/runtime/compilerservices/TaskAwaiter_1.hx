package cs.system.runtime.compilerservices;

@:nativeGen @:struct @:libType @:csNative @:native("System.Runtime.CompilerServices.TaskAwaiter`1") extern final class TaskAwaiter_1<T0> extends cs.system.ValueType implements ICriticalNotifyCompletion implements INotifyCompletion {
	var IsCompleted(get,never) : Bool;
	function GetResult() : T0;
	function OnCompleted(continuation : cs.system.Action) : Void;
	function UnsafeOnCompleted(continuation : cs.system.Action) : Void;
	function get_IsCompleted() : Bool;
}
