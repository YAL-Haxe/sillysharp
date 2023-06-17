package cs.system.runtime.compilerservices;

@:nativeGen @:struct @:libType @:csNative @:native("System.Runtime.CompilerServices.ConfiguredTaskAwaitable`1.ConfiguredTaskAwaiter") extern final class ConfiguredTaskAwaitable_1_ConfiguredTaskAwaiter<T0> extends cs.system.ValueType implements ICriticalNotifyCompletion implements INotifyCompletion {
	var IsCompleted(get,never) : Bool;
	function GetResult() : T0;
	function OnCompleted(continuation : cs.system.Action) : Void;
	function UnsafeOnCompleted(continuation : cs.system.Action) : Void;
	function get_IsCompleted() : Bool;
}
