package cs.system.runtime.compilerservices;

@:nativeGen @:struct @:libType @:csNative @:native("System.Runtime.CompilerServices.YieldAwaitable") extern final class YieldAwaitable extends cs.system.ValueType {
	function GetAwaiter() : YieldAwaitable_YieldAwaiter;
}
