package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.EventInfo.AddEvent") extern final class EventInfo_Delegate_AddEvent_2<T0,T1> extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(_this : T0, dele : T1, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : Void;
	function Invoke(_this : T0, dele : T1) : Void;
	static function op_Addition<T0,T1>(arg1 : EventInfo_AddEvent_2<T0,T1>, arg2 : EventInfo_AddEvent_2<T0,T1>) : EventInfo_AddEvent_2<T0,T1>;
	static function op_Subtraction<T0,T1>(arg1 : EventInfo_AddEvent_2<T0,T1>, arg2 : EventInfo_AddEvent_2<T0,T1>) : EventInfo_AddEvent_2<T0,T1>;
}
