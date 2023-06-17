package cs.system;

@:nativeGen @:native("System.EnvironmentVariableTarget") @:csNative extern enum EnvironmentVariableTarget {
	Process;
	User;
	Machine;
}
