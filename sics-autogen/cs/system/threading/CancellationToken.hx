package cs.system.threading;

@:nativeGen @:struct @:libType @:csNative @:native("System.Threading.CancellationToken") extern final class CancellationToken extends cs.system.ValueType {
	var CanBeCanceled(get,never) : Bool;
	var IsCancellationRequested(get,never) : Bool;
	var WaitHandle(get,never) : WaitHandle;
	function new(canceled : Bool) : Void;
	@:overload(function(callback : cs.system.Action) : CancellationTokenRegistration {})
	@:overload(function(callback : cs.system.Action_1<Dynamic>, state : Dynamic, useSynchronizationContext : Bool) : CancellationTokenRegistration {})
	@:overload(function(callback : cs.system.Action_1<Dynamic>, state : Dynamic) : CancellationTokenRegistration {})
	function Register(callback : cs.system.Action, useSynchronizationContext : Bool) : CancellationTokenRegistration;
	function ThrowIfCancellationRequested() : Void;
	function get_CanBeCanceled() : Bool;
	function get_IsCancellationRequested() : Bool;
	function get_WaitHandle() : WaitHandle;
	static var None(get,never) : CancellationToken;
	static function get_None() : CancellationToken;
	static function op_Equality(left : CancellationToken, right : CancellationToken) : Bool;
	static function op_Inequality(left : CancellationToken, right : CancellationToken) : Bool;
}
