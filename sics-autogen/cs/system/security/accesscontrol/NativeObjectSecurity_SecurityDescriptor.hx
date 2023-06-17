package cs.system.security.accesscontrol;

@:nativeGen @:struct @:libType @:csNative @:native("System.Security.AccessControl.NativeObjectSecurity.SecurityDescriptor") extern final class NativeObjectSecurity_SecurityDescriptor extends cs.system.ValueType {
	var ControlFlags : cs.types.UInt16;
	var Dacl : cs.system.IntPtr;
	var Group : cs.system.IntPtr;
	var Owner : cs.system.IntPtr;
	var Revision : cs.types.UInt8;
	var Sacl : cs.system.IntPtr;
	var Size : cs.types.UInt8;
}
