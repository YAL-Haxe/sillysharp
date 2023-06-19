package cs.system.threading.tasks;

@:nativeGen @:libType @:csNative @:native("System.Threading.Tasks.Task") extern class Task_1<T0> extends Task {
	var Result(get,never) : T0;
	@:overload(function(_function : cs.system.Func_1<T0>) : Void {})
	@:overload(function(_function : cs.system.Func_2<Dynamic,T0>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken, creationOptions : TaskCreationOptions) : Void {})
	@:overload(function(_function : cs.system.Func_2<Dynamic,T0>, state : Dynamic, creationOptions : TaskCreationOptions) : Void {})
	@:overload(function(_function : cs.system.Func_2<Dynamic,T0>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken) : Void {})
	@:overload(function(_function : cs.system.Func_2<Dynamic,T0>, state : Dynamic) : Void {})
	@:overload(function(_function : cs.system.Func_1<T0>, cancellationToken : cs.system.threading.CancellationToken, creationOptions : TaskCreationOptions) : Void {})
	@:overload(function(_function : cs.system.Func_1<T0>, creationOptions : TaskCreationOptions) : Void {})
	function new(_function : cs.system.Func_1<T0>, cancellationToken : cs.system.threading.CancellationToken) : Void;
	function ConfigureAwait(continueOnCapturedContext : Bool) : cs.system.runtime.compilerservices.ConfiguredTaskAwaitable_1<T0>;
	@:overload(function(continuationAction : cs.system.Action_1<Task_1<T0>>) : Task {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_3<Task_1<T0>,Dynamic,M0>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_3<Task_1<T0>,Dynamic,M0>, state : Dynamic, scheduler : TaskScheduler) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_3<Task_1<T0>,Dynamic,M0>, state : Dynamic, continuationOptions : TaskContinuationOptions) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_3<Task_1<T0>,Dynamic,M0>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_3<Task_1<T0>,Dynamic,M0>, state : Dynamic) : Task_1<M0> {})
	@:overload(function(continuationAction : cs.system.Action_2<Task_1<T0>,Dynamic>, state : Dynamic, scheduler : TaskScheduler) : Task {})
	@:overload(function(continuationAction : cs.system.Action_2<Task_1<T0>,Dynamic>, state : Dynamic, continuationOptions : TaskContinuationOptions) : Task {})
	@:overload(function(continuationAction : cs.system.Action_2<Task_1<T0>,Dynamic>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken) : Task {})
	@:overload(function(continuationAction : cs.system.Action_2<Task_1<T0>,Dynamic>, state : Dynamic) : Task {})
	@:overload(function(continuationAction : cs.system.Action_2<Task_1<T0>,Dynamic>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_2<Task_1<T0>,M0>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_2<Task_1<T0>,M0>, scheduler : TaskScheduler) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_2<Task_1<T0>,M0>, continuationOptions : TaskContinuationOptions) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_2<Task_1<T0>,M0>, cancellationToken : cs.system.threading.CancellationToken) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_2<Task_1<T0>,M0>) : Task_1<M0> {})
	@:overload(function(continuationAction : cs.system.Action_1<Task_1<T0>>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task {})
	@:overload(function(continuationAction : cs.system.Action_1<Task_1<T0>>, scheduler : TaskScheduler) : Task {})
	@:overload(function(continuationAction : cs.system.Action_1<Task_1<T0>>, cancellationToken : cs.system.threading.CancellationToken) : Task {})
	function ContinueWith(continuationAction : cs.system.Action_1<Task_1<T0>>, continuationOptions : TaskContinuationOptions) : Task;
	function GetAwaiter() : cs.system.runtime.compilerservices.TaskAwaiter_1<T0>;
	function get_Result() : T0;
	static var Factory(get,never) : TaskFactory_1<T0>;
	static function get_Factory() : TaskFactory_1<Dynamic>;
}
