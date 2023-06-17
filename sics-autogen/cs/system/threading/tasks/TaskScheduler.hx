package cs.system.threading.tasks;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Threading.Tasks.TaskScheduler") extern class TaskScheduler {
	var Id(get,never) : Int;
	var MaximumConcurrencyLevel(get,never) : Int;
	@:protected private function new() : Void;
	@:protected private function GetScheduledTasks() : cs.system.collections.generic.IEnumerable_1<Task>;
	@:protected private function QueueTask(task : Task) : Void;
	@:protected private function TryDequeue(task : Task) : Bool;
	@:protected private function TryExecuteTask(task : Task) : Bool;
	@:protected private function TryExecuteTaskInline(task : Task, taskWasPreviouslyQueued : Bool) : Bool;
	function get_Id() : Int;
	function get_MaximumConcurrencyLevel() : Int;
	static var Current(get,never) : TaskScheduler;
	static var Default(get,never) : TaskScheduler;
	@:event @:keep @:skipReflection private static var UnobservedTaskException : cs.system.EventHandler_1<UnobservedTaskExceptionEventArgs>;
	static function FromCurrentSynchronizationContext() : TaskScheduler;
	static function add_UnobservedTaskException(value : cs.system.EventHandler_1<UnobservedTaskExceptionEventArgs>) : Void;
	static function get_Current() : TaskScheduler;
	static function get_Default() : TaskScheduler;
	static function remove_UnobservedTaskException(value : cs.system.EventHandler_1<UnobservedTaskExceptionEventArgs>) : Void;
}
