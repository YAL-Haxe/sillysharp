package cs.system.threading.tasks;

@:nativeGen @:libType @:csNative @:native("System.Threading.Tasks.TaskScheduler.TaskSchedulerDebuggerView") extern final class TaskScheduler_TaskSchedulerDebuggerView {
	var ScheduledTasks(get,never) : cs.system.collections.generic.IEnumerable_1<Task>;
	function new(scheduler : TaskScheduler) : Void;
	function get_ScheduledTasks() : cs.system.collections.generic.IEnumerable_1<Task>;
}
