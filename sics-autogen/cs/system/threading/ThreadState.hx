package cs.system.threading;

@:nativeGen @:native("System.Threading.ThreadState") @:csNative extern enum ThreadState {
	Running;
	StopRequested;
	SuspendRequested;
	Background;
	Unstarted;
	Stopped;
	WaitSleepJoin;
	Suspended;
	AbortRequested;
	Aborted;
}
