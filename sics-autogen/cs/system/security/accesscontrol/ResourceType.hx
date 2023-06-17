package cs.system.security.accesscontrol;

@:nativeGen @:native("System.Security.AccessControl.ResourceType") @:csNative extern enum ResourceType {
	Unknown;
	FileObject;
	Service;
	Printer;
	RegistryKey;
	LMShare;
	KernelObject;
	WindowObject;
	DSObject;
	DSObjectAll;
	ProviderDefined;
	WmiGuidObject;
	RegistryWow6432Key;
}
