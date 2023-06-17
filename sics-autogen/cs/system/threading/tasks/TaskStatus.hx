package cs.system.threading.tasks;

@:nativeGen @:native("System.Threading.Tasks.TaskStatus") @:csNative extern enum TaskStatus {
	Created;
	WaitingForActivation;
	WaitingToRun;
	Running;
	WaitingForChildrenToComplete;
	RanToCompletion;
	Canceled;
	Faulted;
}
