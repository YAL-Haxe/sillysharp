package cs.system.security.cryptography.x509certificates;

@:nativeGen @:native("System.Security.Cryptography.X509Certificates.X509KeyStorageFlags") @:csNative extern enum X509KeyStorageFlags {
	DefaultKeySet;
	UserKeySet;
	MachineKeySet;
	Exportable;
	UserProtected;
	PersistKeySet;
}
