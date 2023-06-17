package cs.system.reflection;

@:nativeGen @:native("System.Reflection.ResourceLocation") @:csNative extern enum ResourceLocation {
	Embedded;
	ContainedInAnotherAssembly;
	ContainedInManifestFile;
}
