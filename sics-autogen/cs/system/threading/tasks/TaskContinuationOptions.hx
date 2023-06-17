package cs.system.threading.tasks;

@:nativeGen @:native("System.Threading.Tasks.TaskContinuationOptions") @:csNative extern enum TaskContinuationOptions {
	None;
	PreferFairness;
	LongRunning;
	AttachedToParent;
	DenyChildAttach;
	HideScheduler;
	LazyCancellation;
	NotOnRanToCompletion;
	NotOnFaulted;
	OnlyOnCanceled;
	NotOnCanceled;
	OnlyOnFaulted;
	OnlyOnRanToCompletion;
	ExecuteSynchronously;
}
