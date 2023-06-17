package cs.system.security.accesscontrol;

@:nativeGen @:libType @:csNative @:native("System.Security.AccessControl.NativeObjectSecurity.SetSecurityInfoNativeCall") extern final class NativeObjectSecurity_Delegate_SetSecurityInfoNativeCall extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(securityInfos : SecurityInfos, owner : cs.NativeArray<cs.types.UInt8>, group : cs.NativeArray<cs.types.UInt8>, dacl : cs.NativeArray<cs.types.UInt8>, sacl : cs.NativeArray<cs.types.UInt8>, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(result : cs.system.IAsyncResult) : Int;
	function Invoke(securityInfos : SecurityInfos, owner : cs.NativeArray<cs.types.UInt8>, group : cs.NativeArray<cs.types.UInt8>, dacl : cs.NativeArray<cs.types.UInt8>, sacl : cs.NativeArray<cs.types.UInt8>) : Int;
	static function op_Addition(arg1 : NativeObjectSecurity_SetSecurityInfoNativeCall, arg2 : NativeObjectSecurity_SetSecurityInfoNativeCall) : NativeObjectSecurity_SetSecurityInfoNativeCall;
	static function op_Subtraction(arg1 : NativeObjectSecurity_SetSecurityInfoNativeCall, arg2 : NativeObjectSecurity_SetSecurityInfoNativeCall) : NativeObjectSecurity_SetSecurityInfoNativeCall;
}
