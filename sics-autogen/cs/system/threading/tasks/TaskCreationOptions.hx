package cs.system.threading.tasks;

@:nativeGen @:native("System.Threading.Tasks.TaskCreationOptions") @:csNative extern enum TaskCreationOptions {
	None;
	PreferFairness;
	LongRunning;
	AttachedToParent;
	DenyChildAttach;
	HideScheduler;
}
