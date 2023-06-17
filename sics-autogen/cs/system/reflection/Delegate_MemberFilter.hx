package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.MemberFilter") extern final class Delegate_MemberFilter extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(m : MemberInfo, filterCriteria : Dynamic, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : Bool;
	function Invoke(m : MemberInfo, filterCriteria : Dynamic) : Bool;
	static function op_Addition(arg1 : MemberFilter, arg2 : MemberFilter) : MemberFilter;
	static function op_Subtraction(arg1 : MemberFilter, arg2 : MemberFilter) : MemberFilter;
}
