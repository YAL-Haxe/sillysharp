package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Predicate`1") extern final class Delegate_Predicate_1<T0> extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(obj : T0, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : Bool;
	function Invoke(obj : T0) : Bool;
	static function op_Addition<T0>(arg1 : Predicate_1<T0>, arg2 : Predicate_1<T0>) : Predicate_1<T0>;
	static function op_Subtraction<T0>(arg1 : Predicate_1<T0>, arg2 : Predicate_1<T0>) : Predicate_1<T0>;
}
