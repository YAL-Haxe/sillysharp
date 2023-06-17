package cs.system.threading.tasks;

@:nativeGen @:libType @:csNative @:native("System.Threading.Tasks.TaskFactory") extern class TaskFactory {
	var CancellationToken(get,never) : cs.system.threading.CancellationToken;
	var ContinuationOptions(get,never) : TaskContinuationOptions;
	var CreationOptions(get,never) : TaskCreationOptions;
	var Scheduler(get,never) : TaskScheduler;
	@:overload(function() : Void {})
	@:overload(function(cancellationToken : cs.system.threading.CancellationToken, creationOptions : TaskCreationOptions, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Void {})
	@:overload(function(creationOptions : TaskCreationOptions, continuationOptions : TaskContinuationOptions) : Void {})
	@:overload(function(scheduler : TaskScheduler) : Void {})
	function new(cancellationToken : cs.system.threading.CancellationToken) : Void;
	@:overload(function(tasks : cs.NativeArray<Task>, continuationAction : cs.system.Action_1<cs.NativeArray<Task>>) : Task {})
	@:overload(function<M0,M1>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task_1<M0>>,M1>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task_1<M1> {})
	@:overload(function<M0,M1>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task_1<M0>>,M1>, cancellationToken : cs.system.threading.CancellationToken) : Task_1<M1> {})
	@:overload(function<M0,M1>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task_1<M0>>,M1>, continuationOptions : TaskContinuationOptions) : Task_1<M1> {})
	@:overload(function<M0,M1>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task_1<M0>>,M1>) : Task_1<M1> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task>,M0>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task_1<M0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task>,M0>, cancellationToken : cs.system.threading.CancellationToken) : Task_1<M0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task>,M0>, continuationOptions : TaskContinuationOptions) : Task_1<M0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task>,M0>) : Task_1<M0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationAction : cs.system.Action_1<cs.NativeArray<Task_1<M0>>>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationAction : cs.system.Action_1<cs.NativeArray<Task_1<M0>>>, continuationOptions : TaskContinuationOptions) : Task {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationAction : cs.system.Action_1<cs.NativeArray<Task_1<M0>>>, cancellationToken : cs.system.threading.CancellationToken) : Task {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationAction : cs.system.Action_1<cs.NativeArray<Task_1<M0>>>) : Task {})
	@:overload(function(tasks : cs.NativeArray<Task>, continuationAction : cs.system.Action_1<cs.NativeArray<Task>>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task {})
	@:overload(function(tasks : cs.NativeArray<Task>, continuationAction : cs.system.Action_1<cs.NativeArray<Task>>, continuationOptions : TaskContinuationOptions) : Task {})
	function ContinueWhenAll(tasks : cs.NativeArray<Task>, continuationAction : cs.system.Action_1<cs.NativeArray<Task>>, cancellationToken : cs.system.threading.CancellationToken) : Task;
	@:overload(function(tasks : cs.NativeArray<Task>, continuationAction : cs.system.Action_1<Task>) : Task {})
	@:overload(function<M0,M1>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<Task_1<M0>,M1>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task_1<M1> {})
	@:overload(function<M0,M1>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<Task_1<M0>,M1>, continuationOptions : TaskContinuationOptions) : Task_1<M1> {})
	@:overload(function<M0,M1>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<Task_1<M0>,M1>, cancellationToken : cs.system.threading.CancellationToken) : Task_1<M1> {})
	@:overload(function<M0,M1>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<Task_1<M0>,M1>) : Task_1<M1> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<Task,M0>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task_1<M0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<Task,M0>, continuationOptions : TaskContinuationOptions) : Task_1<M0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<Task,M0>, cancellationToken : cs.system.threading.CancellationToken) : Task_1<M0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<Task,M0>) : Task_1<M0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationAction : cs.system.Action_1<Task_1<M0>>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationAction : cs.system.Action_1<Task_1<M0>>, continuationOptions : TaskContinuationOptions) : Task {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationAction : cs.system.Action_1<Task_1<M0>>, cancellationToken : cs.system.threading.CancellationToken) : Task {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationAction : cs.system.Action_1<Task_1<M0>>) : Task {})
	@:overload(function(tasks : cs.NativeArray<Task>, continuationAction : cs.system.Action_1<Task>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task {})
	@:overload(function(tasks : cs.NativeArray<Task>, continuationAction : cs.system.Action_1<Task>, continuationOptions : TaskContinuationOptions) : Task {})
	function ContinueWhenAny(tasks : cs.NativeArray<Task>, continuationAction : cs.system.Action_1<Task>, cancellationToken : cs.system.threading.CancellationToken) : Task;
	@:overload(function(asyncResult : cs.system.IAsyncResult, endMethod : cs.system.Action_1<cs.system.IAsyncResult>) : Task {})
	@:overload(function<M0,M1,M2,M3>(beginMethod : cs.system.Func_6<M0,M1,M2,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,M3>, arg1 : M0, arg2 : M1, arg3 : M2, state : Dynamic, creationOptions : TaskCreationOptions) : Task_1<M3> {})
	@:overload(function<M0,M1,M2,M3>(beginMethod : cs.system.Func_6<M0,M1,M2,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,M3>, arg1 : M0, arg2 : M1, arg3 : M2, state : Dynamic) : Task_1<M3> {})
	@:overload(function<M0,M1,M2>(beginMethod : cs.system.Func_5<M0,M1,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,M2>, arg1 : M0, arg2 : M1, state : Dynamic, creationOptions : TaskCreationOptions) : Task_1<M2> {})
	@:overload(function<M0,M1,M2>(beginMethod : cs.system.Func_5<M0,M1,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,M2>, arg1 : M0, arg2 : M1, state : Dynamic) : Task_1<M2> {})
	@:overload(function<M0,M1>(beginMethod : cs.system.Func_4<M0,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,M1>, arg1 : M0, state : Dynamic, creationOptions : TaskCreationOptions) : Task_1<M1> {})
	@:overload(function<M0,M1>(beginMethod : cs.system.Func_4<M0,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,M1>, arg1 : M0, state : Dynamic) : Task_1<M1> {})
	@:overload(function<M0>(beginMethod : cs.system.Func_3<cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,M0>, state : Dynamic, creationOptions : TaskCreationOptions) : Task_1<M0> {})
	@:overload(function<M0>(beginMethod : cs.system.Func_3<cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,M0>, state : Dynamic) : Task_1<M0> {})
	@:overload(function<M0,M1,M2>(beginMethod : cs.system.Func_6<M0,M1,M2,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Action_1<cs.system.IAsyncResult>, arg1 : M0, arg2 : M1, arg3 : M2, state : Dynamic, creationOptions : TaskCreationOptions) : Task {})
	@:overload(function<M0,M1,M2>(beginMethod : cs.system.Func_6<M0,M1,M2,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Action_1<cs.system.IAsyncResult>, arg1 : M0, arg2 : M1, arg3 : M2, state : Dynamic) : Task {})
	@:overload(function<M0,M1>(beginMethod : cs.system.Func_5<M0,M1,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Action_1<cs.system.IAsyncResult>, arg1 : M0, arg2 : M1, state : Dynamic, creationOptions : TaskCreationOptions) : Task {})
	@:overload(function<M0,M1>(beginMethod : cs.system.Func_5<M0,M1,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Action_1<cs.system.IAsyncResult>, arg1 : M0, arg2 : M1, state : Dynamic) : Task {})
	@:overload(function<M0>(beginMethod : cs.system.Func_4<M0,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Action_1<cs.system.IAsyncResult>, arg1 : M0, state : Dynamic, creationOptions : TaskCreationOptions) : Task {})
	@:overload(function<M0>(beginMethod : cs.system.Func_4<M0,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Action_1<cs.system.IAsyncResult>, arg1 : M0, state : Dynamic) : Task {})
	@:overload(function(beginMethod : cs.system.Func_3<cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Action_1<cs.system.IAsyncResult>, state : Dynamic, creationOptions : TaskCreationOptions) : Task {})
	@:overload(function(beginMethod : cs.system.Func_3<cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Action_1<cs.system.IAsyncResult>, state : Dynamic) : Task {})
	@:overload(function<M0>(asyncResult : cs.system.IAsyncResult, endMethod : cs.system.Func_2<cs.system.IAsyncResult,M0>, creationOptions : TaskCreationOptions, scheduler : TaskScheduler) : Task_1<M0> {})
	@:overload(function<M0>(asyncResult : cs.system.IAsyncResult, endMethod : cs.system.Func_2<cs.system.IAsyncResult,M0>, creationOptions : TaskCreationOptions) : Task_1<M0> {})
	@:overload(function<M0>(asyncResult : cs.system.IAsyncResult, endMethod : cs.system.Func_2<cs.system.IAsyncResult,M0>) : Task_1<M0> {})
	@:overload(function(asyncResult : cs.system.IAsyncResult, endMethod : cs.system.Action_1<cs.system.IAsyncResult>, creationOptions : TaskCreationOptions, scheduler : TaskScheduler) : Task {})
	function FromAsync(asyncResult : cs.system.IAsyncResult, endMethod : cs.system.Action_1<cs.system.IAsyncResult>, creationOptions : TaskCreationOptions) : Task;
	@:overload(function(action : cs.system.Action) : Task {})
	@:overload(function<M0>(_function : cs.system.Func_2<Dynamic,M0>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken, creationOptions : TaskCreationOptions, scheduler : TaskScheduler) : Task_1<M0> {})
	@:overload(function<M0>(_function : cs.system.Func_2<Dynamic,M0>, state : Dynamic, creationOptions : TaskCreationOptions) : Task_1<M0> {})
	@:overload(function<M0>(_function : cs.system.Func_2<Dynamic,M0>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken) : Task_1<M0> {})
	@:overload(function<M0>(_function : cs.system.Func_2<Dynamic,M0>, state : Dynamic) : Task_1<M0> {})
	@:overload(function<M0>(_function : cs.system.Func_1<M0>, cancellationToken : cs.system.threading.CancellationToken, creationOptions : TaskCreationOptions, scheduler : TaskScheduler) : Task_1<M0> {})
	@:overload(function<M0>(_function : cs.system.Func_1<M0>, cancellationToken : cs.system.threading.CancellationToken) : Task_1<M0> {})
	@:overload(function<M0>(_function : cs.system.Func_1<M0>, creationOptions : TaskCreationOptions) : Task_1<M0> {})
	@:overload(function<M0>(_function : cs.system.Func_1<M0>) : Task_1<M0> {})
	@:overload(function(action : cs.system.Action_1<Dynamic>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken, creationOptions : TaskCreationOptions, scheduler : TaskScheduler) : Task {})
	@:overload(function(action : cs.system.Action_1<Dynamic>, state : Dynamic, creationOptions : TaskCreationOptions) : Task {})
	@:overload(function(action : cs.system.Action_1<Dynamic>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken) : Task {})
	@:overload(function(action : cs.system.Action_1<Dynamic>, state : Dynamic) : Task {})
	@:overload(function(action : cs.system.Action, cancellationToken : cs.system.threading.CancellationToken, creationOptions : TaskCreationOptions, scheduler : TaskScheduler) : Task {})
	@:overload(function(action : cs.system.Action, creationOptions : TaskCreationOptions) : Task {})
	function StartNew(action : cs.system.Action, cancellationToken : cs.system.threading.CancellationToken) : Task;
	function get_CancellationToken() : cs.system.threading.CancellationToken;
	function get_ContinuationOptions() : TaskContinuationOptions;
	function get_CreationOptions() : TaskCreationOptions;
	function get_Scheduler() : TaskScheduler;
}
