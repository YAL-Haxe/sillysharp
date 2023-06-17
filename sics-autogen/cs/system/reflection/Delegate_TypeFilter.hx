package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.TypeFilter") extern final class Delegate_TypeFilter extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(m : cs.system.Type, filterCriteria : Dynamic, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : Bool;
	function Invoke(m : cs.system.Type, filterCriteria : Dynamic) : Bool;
	static function op_Addition(arg1 : TypeFilter, arg2 : TypeFilter) : TypeFilter;
	static function op_Subtraction(arg1 : TypeFilter, arg2 : TypeFilter) : TypeFilter;
}
