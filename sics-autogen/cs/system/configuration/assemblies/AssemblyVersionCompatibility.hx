package cs.system.configuration.assemblies;

@:nativeGen @:native("System.Configuration.Assemblies.AssemblyVersionCompatibility") @:csNative extern enum AssemblyVersionCompatibility {
	SameMachine;
	SameProcess;
	SameDomain;
}
