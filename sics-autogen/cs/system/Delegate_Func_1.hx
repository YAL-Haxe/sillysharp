package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Func`1") extern final class Delegate_Func_1<T0> extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : T0;
	function Invoke() : T0;
	static function op_Addition<T0>(arg1 : Func_1<T0>, arg2 : Func_1<T0>) : Func_1<T0>;
	static function op_Subtraction<T0>(arg1 : Func_1<T0>, arg2 : Func_1<T0>) : Func_1<T0>;
}
