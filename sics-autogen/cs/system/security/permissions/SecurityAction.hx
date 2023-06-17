package cs.system.security.permissions;

@:nativeGen @:native("System.Security.Permissions.SecurityAction") @:csNative extern enum SecurityAction {
	Demand;
	Assert;
	Deny;
	PermitOnly;
	LinkDemand;
	InheritanceDemand;
	RequestMinimum;
	RequestOptional;
	RequestRefuse;
}
