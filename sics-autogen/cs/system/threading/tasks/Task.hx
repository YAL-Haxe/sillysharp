package cs.system.threading.tasks;

@:nativeGen @:libType @:csNative @:native("System.Threading.Tasks.Task") extern class Task implements cs.system.IDisposable implements cs.system.IAsyncResult {
	var AsyncState(get,never) : Dynamic;
	var CreationOptions(get,never) : TaskCreationOptions;
	var Exception(get,never) : cs.system.AggregateException;
	var Id(get,never) : Int;
	var IsCanceled(get,never) : Bool;
	var IsCompleted(get,never) : Bool;
	var IsFaulted(get,never) : Bool;
	var Status(get,never) : TaskStatus;
	@:overload(function(action : cs.system.Action) : Void {})
	@:overload(function(action : cs.system.Action_1<Dynamic>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken, creationOptions : TaskCreationOptions) : Void {})
	@:overload(function(action : cs.system.Action_1<Dynamic>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken) : Void {})
	@:overload(function(action : cs.system.Action_1<Dynamic>, state : Dynamic, creationOptions : TaskCreationOptions) : Void {})
	@:overload(function(action : cs.system.Action_1<Dynamic>, state : Dynamic) : Void {})
	@:overload(function(action : cs.system.Action, cancellationToken : cs.system.threading.CancellationToken, creationOptions : TaskCreationOptions) : Void {})
	@:overload(function(action : cs.system.Action, cancellationToken : cs.system.threading.CancellationToken) : Void {})
	function new(action : cs.system.Action, creationOptions : TaskCreationOptions) : Void;
	function ConfigureAwait(continueOnCapturedContext : Bool) : cs.system.runtime.compilerservices.ConfiguredTaskAwaitable;
	@:overload(function(continuationAction : cs.system.Action_1<Task>) : Task {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_3<Task,Dynamic,M0>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_3<Task,Dynamic,M0>, state : Dynamic, scheduler : TaskScheduler) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_3<Task,Dynamic,M0>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_3<Task,Dynamic,M0>, state : Dynamic, continuationOptions : TaskContinuationOptions) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_3<Task,Dynamic,M0>, state : Dynamic) : Task_1<M0> {})
	@:overload(function(continuationAction : cs.system.Action_2<Task,Dynamic>, state : Dynamic, scheduler : TaskScheduler) : Task {})
	@:overload(function(continuationAction : cs.system.Action_2<Task,Dynamic>, state : Dynamic, continuationOptions : TaskContinuationOptions) : Task {})
	@:overload(function(continuationAction : cs.system.Action_2<Task,Dynamic>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken) : Task {})
	@:overload(function(continuationAction : cs.system.Action_2<Task,Dynamic>, state : Dynamic) : Task {})
	@:overload(function(continuationAction : cs.system.Action_2<Task,Dynamic>, state : Dynamic, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_2<Task,M0>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_2<Task,M0>, scheduler : TaskScheduler) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_2<Task,M0>, cancellationToken : cs.system.threading.CancellationToken) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_2<Task,M0>, continuationOptions : TaskContinuationOptions) : Task_1<M0> {})
	@:overload(function<M0>(continuationFunction : cs.system.Func_2<Task,M0>) : Task_1<M0> {})
	@:overload(function(continuationAction : cs.system.Action_1<Task>, cancellationToken : cs.system.threading.CancellationToken, continuationOptions : TaskContinuationOptions, scheduler : TaskScheduler) : Task {})
	@:overload(function(continuationAction : cs.system.Action_1<Task>, scheduler : TaskScheduler) : Task {})
	@:overload(function(continuationAction : cs.system.Action_1<Task>, cancellationToken : cs.system.threading.CancellationToken) : Task {})
	function ContinueWith(continuationAction : cs.system.Action_1<Task>, continuationOptions : TaskContinuationOptions) : Task;
	@:overload(function() : Void {})
	@:protected private function Dispose(disposing : Bool) : Void;
	function GetAwaiter() : cs.system.runtime.compilerservices.TaskAwaiter;
	@:overload(function() : Void {})
	function RunSynchronously(scheduler : TaskScheduler) : Void;
	@:overload(function() : Void {})
	function Start(scheduler : TaskScheduler) : Void;
	@:overload(function() : Void {})
	@:overload(function(millisecondsTimeout : Int, cancellationToken : cs.system.threading.CancellationToken) : Bool {})
	@:overload(function(millisecondsTimeout : Int) : Bool {})
	@:overload(function(timeout : cs.system.TimeSpan) : Bool {})
	function Wait(cancellationToken : cs.system.threading.CancellationToken) : Void;
	function get_AsyncState() : Dynamic;
	function get_CreationOptions() : TaskCreationOptions;
	function get_Exception() : cs.system.AggregateException;
	function get_Id() : Int;
	function get_IsCanceled() : Bool;
	function get_IsCompleted() : Bool;
	function get_IsFaulted() : Bool;
	function get_Status() : TaskStatus;
	static var CurrentId(get,never) : cs.system.Nullable_1<Int>;
	static var Factory(get,never) : TaskFactory;
	@:overload(function(millisecondsDelay : Int) : Task {})
	@:overload(function(millisecondsDelay : Int, cancellationToken : cs.system.threading.CancellationToken) : Task {})
	@:overload(function(delay : cs.system.TimeSpan, cancellationToken : cs.system.threading.CancellationToken) : Task {})
	static function Delay(delay : cs.system.TimeSpan) : Task;
	static function FromResult<M0>(result : M0) : Task_1<M0>;
	@:overload(function(action : cs.system.Action) : Task {})
	@:overload(function<M0>(_function : cs.system.Func_1<Task_1<M0>>, cancellationToken : cs.system.threading.CancellationToken) : Task_1<M0> {})
	@:overload(function<M0>(_function : cs.system.Func_1<Task_1<M0>>) : Task_1<M0> {})
	@:overload(function<M0>(_function : cs.system.Func_1<M0>, cancellationToken : cs.system.threading.CancellationToken) : Task_1<M0> {})
	@:overload(function<M0>(_function : cs.system.Func_1<M0>) : Task_1<M0> {})
	@:overload(function(_function : cs.system.Func_1<Task>, cancellationToken : cs.system.threading.CancellationToken) : Task {})
	@:overload(function(_function : cs.system.Func_1<Task>) : Task {})
	static function Run(action : cs.system.Action, cancellationToken : cs.system.threading.CancellationToken) : Task;
	@:overload(function(tasks : cs.NativeArray<Task>) : Void {})
	@:overload(function(tasks : cs.NativeArray<Task>, millisecondsTimeout : Int, cancellationToken : cs.system.threading.CancellationToken) : Bool {})
	@:overload(function(tasks : cs.NativeArray<Task>, millisecondsTimeout : Int) : Bool {})
	@:overload(function(tasks : cs.NativeArray<Task>, timeout : cs.system.TimeSpan) : Bool {})
	static function WaitAll(tasks : cs.NativeArray<Task>, cancellationToken : cs.system.threading.CancellationToken) : Void;
	@:overload(function(tasks : cs.NativeArray<Task>) : Int {})
	@:overload(function(tasks : cs.NativeArray<Task>, millisecondsTimeout : Int, cancellationToken : cs.system.threading.CancellationToken) : Int {})
	@:overload(function(tasks : cs.NativeArray<Task>, cancellationToken : cs.system.threading.CancellationToken) : Int {})
	@:overload(function(tasks : cs.NativeArray<Task>, millisecondsTimeout : Int) : Int {})
	static function WaitAny(tasks : cs.NativeArray<Task>, timeout : cs.system.TimeSpan) : Int;
	@:overload(function(tasks : cs.NativeArray<Task>) : Task {})
	@:overload(function<M0>(tasks : cs.system.collections.generic.IEnumerable_1<Task_1<M0>>) : Task_1<cs.NativeArray<M0>> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>) : Task_1<cs.NativeArray<M0>> {})
	static function WhenAll(tasks : cs.system.collections.generic.IEnumerable_1<Task>) : Task;
	@:overload(function(tasks : cs.NativeArray<Task>) : Task_1<Task> {})
	@:overload(function<M0>(tasks : cs.system.collections.generic.IEnumerable_1<Task_1<M0>>) : Task_1<Task_1<M0>> {})
	@:overload(function<M0>(tasks : cs.NativeArray<Task_1<M0>>) : Task_1<Task_1<M0>> {})
	static function WhenAny(tasks : cs.system.collections.generic.IEnumerable_1<Task>) : Task_1<Task>;
	static function Yield() : cs.system.runtime.compilerservices.YieldAwaitable;
	static function get_CurrentId() : cs.system.Nullable_1<Int>;
	static function get_Factory() : TaskFactory;
}
