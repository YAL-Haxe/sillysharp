package cs.system.configuration.assemblies;

@:nativeGen @:native("System.Configuration.Assemblies.AssemblyHashAlgorithm") @:csNative extern enum AssemblyHashAlgorithm {
	None;
	MD5;
	SHA1;
	SHA256;
	SHA384;
	SHA512;
}
