package cs.system.security.accesscontrol;

@:nativeGen @:native("System.Security.AccessControl.AccessControlSections") @:csNative extern enum AccessControlSections {
	None;
	Audit;
	Access;
	Owner;
	Group;
	All;
}
