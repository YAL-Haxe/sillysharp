package cs.system.threading.tasks;

@:nativeGen @:libType @:csNative @:native("System.Threading.Tasks.TaskFactory`1") extern class TaskFactory_1<T0> {
	var CancellationToken(get,never) : cs.system.threading.CancellationToken;
	var ContinuationOptions(get,never) : TaskContinuationOptions;
	var CreationOptions(get,never) : TaskCreationOptions;
	var Scheduler(get,never) : TaskScheduler;
	@:overload(function() : Void {})
	@:overload(function(cancellationToken : cs.system.threading.CancellationToken, creationOptions : TaskCreationOptions, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Void {})
	@:overload(function(creationOptions : TaskCreationOptions, continuationOptions : TaskContinuationOptions) : Void {})
	@:overload(function(cancellationToken : cs.system.threading.CancellationToken) : Void {})
	function new(scheduler : TaskScheduler) : Void;
	@:overload(function(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task>,T0>) : Task_1<T0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task_1<M0>>,T0>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task_1<T0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task_1<M0>>,T0>, cancellationToken : cs.system.threading.CancellationToken) : Task_1<T0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task_1<M0>>,T0>, continuationOptions : TaskContinuationOptions) : Task_1<T0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task_1<M0>>,T0>) : Task_1<T0> {})
	@:overload(function(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task>,T0>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task_1<T0> {})
	@:overload(function(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task>,T0>, cancellationToken : cs.system.threading.CancellationToken) : Task_1<T0> {})
	function ContinueWhenAll(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<cs.NativeArray<Task>,T0>, continuationOptions : TaskContinuationOptions) : Task_1<T0>;
	@:overload(function(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<Task,T0>) : Task_1<T0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<Task_1<M0>,T0>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task_1<T0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<Task_1<M0>,T0>, continuationOptions : TaskContinuationOptions) : Task_1<T0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<Task_1<M0>,T0>, cancellationToken : cs.system.threading.CancellationToken) : Task_1<T0> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>, continuationFunction : cs.system.Func_2<Task_1<M0>,T0>) : Task_1<T0> {})
	@:overload(function(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<Task,T0>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task_1<T0> {})
	@:overload(function(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<Task,T0>, continuationOptions : TaskContinuationOptions) : Task_1<T0> {})
	function ContinueWhenAny(tasks : cs.NativeArray<Task>, continuationFunction : cs.system.Func_2<Task,T0>, cancellationToken : cs.system.threading.CancellationToken) : Task_1<T0>;
	@:overload(function(asyncResult : cs.system.IAsyncResult, endMethod : cs.system.Func_2<cs.system.IAsyncResult,T0>) : Task_1<T0> {})
	@:overload(function<M0,M1,M2>(beginMethod : cs.system.Func_6<M0,M1,M2,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,T0>, arg1 : M0, arg2 : M1, arg3 : M2, state : Dynamic, creationOptions : TaskCreationOptions) : Task_1<T0> {})
	@:overload(function<M0,M1,M2>(beginMethod : cs.system.Func_6<M0,M1,M2,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,T0>, arg1 : M0, arg2 : M1, arg3 : M2, state : Dynamic) : Task_1<T0> {})
	@:overload(function<M0,M1>(beginMethod : cs.system.Func_5<M0,M1,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,T0>, arg1 : M0, arg2 : M1, state : Dynamic, creationOptions : TaskCreationOptions) : Task_1<T0> {})
	@:overload(function<M0,M1>(beginMethod : cs.system.Func_5<M0,M1,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,T0>, arg1 : M0, arg2 : M1, state : Dynamic) : Task_1<T0> {})
	@:overload(function<M0>(beginMethod : cs.system.Func_4<M0,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,T0>, arg1 : M0, state : Dynamic, creationOptions : TaskCreationOptions) : Task_1<T0> {})
	@:overload(function<M0>(beginMethod : cs.system.Func_4<M0,cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,T0>, arg1 : M0, state : Dynamic) : Task_1<T0> {})
	@:overload(function(beginMethod : cs.system.Func_3<cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,T0>, state : Dynamic, creationOptions : TaskCreationOptions) : Task_1<T0> {})
	@:overload(function(beginMethod : cs.system.Func_3<cs.system.AsyncCallback,Dynamic,cs.system.IAsyncResult>, endMethod : cs.system.Func_2<cs.system.IAsyncResult,T0>, state : Dynamic) : Task_1<T0> {})
	@:overload(function(asyncResult : cs.system.IAsyncResult, endMethod : cs.system.Func_2<cs.system.IAsyncResult,T0>, creationOptions : TaskCreationOptions, scheduler : TaskScheduler) : Task_1<T0> {})
	function FromAsync(asyncResult : cs.system.IAsyncResult, endMethod : cs.system.Func_2<cs.system.IAsyncResult,T0>, creationOptions : TaskCreationOptions) : Task_1<T0>;
	@:overload(function(_function : cs.system.Func_1<T0>) : Task_1<T0> {})
	@:overload(function(_function : cs.system.Func_2<Dynamic,T0>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken, creationOptions : TaskCreationOptions, scheduler : TaskScheduler) : Task_1<T0> {})
	@:overload(function(_function : cs.system.Func_2<Dynamic,T0>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken) : Task_1<T0> {})
	@:overload(function(_function : cs.system.Func_2<Dynamic,T0>, state : Dynamic, creationOptions : TaskCreationOptions) : Task_1<T0> {})
	@:overload(function(_function : cs.system.Func_2<Dynamic,T0>, state : Dynamic) : Task_1<T0> {})
	@:overload(function(_function : cs.system.Func_1<T0>, cancellationToken : cs.system.threading.CancellationToken, creationOptions : TaskCreationOptions, scheduler : TaskScheduler) : Task_1<T0> {})
	@:overload(function(_function : cs.system.Func_1<T0>, cancellationToken : cs.system.threading.CancellationToken) : Task_1<T0> {})
	function StartNew(_function : cs.system.Func_1<T0>, creationOptions : TaskCreationOptions) : Task_1<T0>;
	function get_CancellationToken() : cs.system.threading.CancellationToken;
	function get_ContinuationOptions() : TaskContinuationOptions;
	function get_CreationOptions() : TaskCreationOptions;
	function get_Scheduler() : TaskScheduler;
}
