package cs.system;

@:nativeGen @:libType @:csNative @:native("System.Converter") extern final class Delegate_Converter_2<T0,T1> extends MulticastDelegate {
	function new(object : Dynamic, method : IntPtr) : Void;
	function BeginInvoke(input : T0, callback : AsyncCallback, object : Dynamic) : IAsyncResult;
	function EndInvoke(result : IAsyncResult) : T1;
	function Invoke(input : T0) : T1;
	static function op_Addition<T0,T1>(arg1 : Converter_2<T0,T1>, arg2 : Converter_2<T0,T1>) : Converter_2<T0,T1>;
	static function op_Subtraction<T0,T1>(arg1 : Converter_2<T0,T1>, arg2 : Converter_2<T0,T1>) : Converter_2<T0,T1>;
}
