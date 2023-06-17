package cs.system.runtime.compilerservices;

@:nativeGen @:struct @:libType @:csNative @:native("System.Runtime.CompilerServices.ConfiguredTaskAwaitable.ConfiguredTaskAwaiter") extern final class ConfiguredTaskAwaitable_ConfiguredTaskAwaiter extends cs.system.ValueType implements ICriticalNotifyCompletion implements INotifyCompletion {
	var IsCompleted(get,never) : Bool;
	function GetResult() : Void;
	function OnCompleted(continuation : cs.system.Action) : Void;
	function UnsafeOnCompleted(continuation : cs.system.Action) : Void;
	function get_IsCompleted() : Bool;
}
