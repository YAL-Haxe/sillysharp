package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Func") extern final class Delegate_Func_3<T0,T1,T2> extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(arg1 : T0, arg2 : T1, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : T2;
	function Invoke(arg1 : T0, arg2 : T1) : T2;
	static function op_Addition<T0,T1,T2>(arg1 : Func_3<T0,T1,T2>, arg2 : Func_3<T0,T1,T2>) : Func_3<T0,T1,T2>;
	static function op_Subtraction<T0,T1,T2>(arg1 : Func_3<T0,T1,T2>, arg2 : Func_3<T0,T1,T2>) : Func_3<T0,T1,T2>;
}
