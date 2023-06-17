package cs.system.threading;

@:nativeGen @:struct @:libType @:csNative @:native("System.Threading.CancellationTokenRegistration") extern final class CancellationTokenRegistration extends cs.system.ValueType implements cs.system.IDisposable implements cs.system.IEquatable_1<CancellationTokenRegistration> {
	function Dispose() : Void;
	static function op_Equality(left : CancellationTokenRegistration, right : CancellationTokenRegistration) : Bool;
	static function op_Inequality(left : CancellationTokenRegistration, right : CancellationTokenRegistration) : Bool;
}
