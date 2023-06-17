package cs.system.security.accesscontrol;

@:nativeGen @:libType @:csNative @:native("System.Security.AccessControl.NativeObjectSecurity.GetSecurityInfoNativeCall") extern final class NativeObjectSecurity_Delegate_GetSecurityInfoNativeCall extends cs.system.MulticastDelegate {
	function new(object : Dynamic, method : cs.system.IntPtr) : Void;
	function BeginInvoke(securityInfos : SecurityInfos, owner : cs.Out<cs.system.IntPtr>, group : cs.Out<cs.system.IntPtr>, dacl : cs.Out<cs.system.IntPtr>, sacl : cs.Out<cs.system.IntPtr>, descriptor : cs.Out<cs.system.IntPtr>, callback : cs.system.AsyncCallback, object : Dynamic) : cs.system.IAsyncResult;
	function EndInvoke(owner : cs.Out<cs.system.IntPtr>, group : cs.Out<cs.system.IntPtr>, dacl : cs.Out<cs.system.IntPtr>, sacl : cs.Out<cs.system.IntPtr>, descriptor : cs.Out<cs.system.IntPtr>, result : cs.system.IAsyncResult) : Int;
	function Invoke(securityInfos : SecurityInfos, owner : cs.Out<cs.system.IntPtr>, group : cs.Out<cs.system.IntPtr>, dacl : cs.Out<cs.system.IntPtr>, sacl : cs.Out<cs.system.IntPtr>, descriptor : cs.Out<cs.system.IntPtr>) : Int;
	static function op_Addition(arg1 : NativeObjectSecurity_GetSecurityInfoNativeCall, arg2 : NativeObjectSecurity_GetSecurityInfoNativeCall) : NativeObjectSecurity_GetSecurityInfoNativeCall;
	static function op_Subtraction(arg1 : NativeObjectSecurity_GetSecurityInfoNativeCall, arg2 : NativeObjectSecurity_GetSecurityInfoNativeCall) : NativeObjectSecurity_GetSecurityInfoNativeCall;
}
