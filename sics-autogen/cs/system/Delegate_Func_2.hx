package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Func") extern final class Delegate_Func_2<T0,T1> extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(arg : T0, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : T1;
	function Invoke(arg : T0) : T1;
	static function op_Addition<T0,T1>(arg1 : Func_2<T0,T1>, arg2 : Func_2<T0,T1>) : Func_2<T0,T1>;
	static function op_Subtraction<T0,T1>(arg1 : Func_2<T0,T1>, arg2 : Func_2<T0,T1>) : Func_2<T0,T1>;
}
