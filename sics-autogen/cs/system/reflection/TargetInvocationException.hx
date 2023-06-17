package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.TargetInvocationException") extern final class TargetInvocationException extends cs.system.ApplicationException {
	@:overload(function(inner : cs.system.Exception) : Void {})
	function new(message : String, inner : cs.system.Exception) : Void;
}
