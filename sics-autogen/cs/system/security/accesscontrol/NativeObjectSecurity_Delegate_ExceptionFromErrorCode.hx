package cs.system.security.accesscontrol;

@:nativeGen @:libType @:csNative @:native("System.Security.AccessControl.NativeObjectSecurity.ExceptionFromErrorCode") extern final class NativeObjectSecurity_Delegate_ExceptionFromErrorCode extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(errorCode : Int, name : String, handle : cs.system.runtime.interopservices.SafeHandle, context : Dynamic, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : cs.system.Exception;
	function Invoke(errorCode : Int, name : String, handle : cs.system.runtime.interopservices.SafeHandle, context : Dynamic) : cs.system.Exception;
	static function op_Addition(arg1 : NativeObjectSecurity_ExceptionFromErrorCode, arg2 : NativeObjectSecurity_ExceptionFromErrorCode) : NativeObjectSecurity_ExceptionFromErrorCode;
	static function op_Subtraction(arg1 : NativeObjectSecurity_ExceptionFromErrorCode, arg2 : NativeObjectSecurity_ExceptionFromErrorCode) : NativeObjectSecurity_ExceptionFromErrorCode;
}
