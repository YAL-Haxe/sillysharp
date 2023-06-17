package cs.system.security.accesscontrol;

@:nativeGen @:native("System.Security.AccessControl.AccessControlModification") @:csNative extern enum AccessControlModification {
	Add;
	Set;
	Reset;
	Remove;
	RemoveAll;
	RemoveSpecific;
}
