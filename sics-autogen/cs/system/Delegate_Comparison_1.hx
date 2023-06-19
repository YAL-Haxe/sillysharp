package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Comparison") extern final class Delegate_Comparison_1<T0> extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(x : T0, y : T0, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : Int;
	function Invoke(x : T0, y : T0) : Int;
	static function op_Addition<T0>(arg1 : Comparison_1<T0>, arg2 : Comparison_1<T0>) : Comparison_1<T0>;
	static function op_Subtraction<T0>(arg1 : Comparison_1<T0>, arg2 : Comparison_1<T0>) : Comparison_1<T0>;
}
