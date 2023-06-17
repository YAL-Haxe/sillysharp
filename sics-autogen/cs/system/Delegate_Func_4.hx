package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Func`4") extern final class Delegate_Func_4<T0,T1,T2,T3> extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(arg1 : T0, arg2 : T1, arg3 : T2, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : T3;
	function Invoke(arg1 : T0, arg2 : T1, arg3 : T2) : T3;
	static function op_Addition<T0,T1,T2,T3>(arg1 : Func_4<T0,T1,T2,T3>, arg2 : Func_4<T0,T1,T2,T3>) : Func_4<T0,T1,T2,T3>;
	static function op_Subtraction<T0,T1,T2,T3>(arg1 : Func_4<T0,T1,T2,T3>, arg2 : Func_4<T0,T1,T2,T3>) : Func_4<T0,T1,T2,T3>;
}
