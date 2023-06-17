package cs.system.threading;

@:nativeGen @:libType @:csNative @:native("System.Threading.Thread") extern final class Thread extends cs.system.runtime.constrainedexecution.CriticalFinalizerObject implements cs.system.runtime.interopservices._Thread {
	var ApartmentState(get,set) : ApartmentState;
	var CurrentCulture(get,set) : cs.system.globalization.CultureInfo;
	var CurrentUICulture(get,set) : cs.system.globalization.CultureInfo;
	var ExecutionContext(get,never) : ExecutionContext;
	var IsAlive(get,never) : Bool;
	var IsBackground(get,set) : Bool;
	var IsThreadPoolThread(get,never) : Bool;
	var ManagedThreadId(get,never) : Int;
	var Name(get,set) : String;
	var Priority(get,set) : ThreadPriority;
	var ThreadState(get,never) : ThreadState;
	@:overload(function(start : ThreadStart) : Void {})
	@:overload(function(start : ParameterizedThreadStart, maxStackSize : Int) : Void {})
	@:overload(function(start : ParameterizedThreadStart) : Void {})
	function new(start : ThreadStart, maxStackSize : Int) : Void;
	@:overload(function() : Void {})
	function Abort(stateInfo : Dynamic) : Void;
	function GetApartmentState() : ApartmentState;
	function GetCompressedStack() : CompressedStack;
	function Interrupt() : Void;
	@:overload(function() : Void {})
	@:overload(function(timeout : cs.system.TimeSpan) : Bool {})
	function Join(millisecondsTimeout : Int) : Bool;
	function Resume() : Void;
	function SetApartmentState(state : ApartmentState) : Void;
	function SetCompressedStack(stack : CompressedStack) : Void;
	@:overload(function() : Void {})
	function Start(parameter : Dynamic) : Void;
	function Suspend() : Void;
	function TrySetApartmentState(state : ApartmentState) : Bool;
	function get_ApartmentState() : ApartmentState;
	function get_CurrentCulture() : cs.system.globalization.CultureInfo;
	function get_CurrentUICulture() : cs.system.globalization.CultureInfo;
	function get_ExecutionContext() : ExecutionContext;
	function get_IsAlive() : Bool;
	function get_IsBackground() : Bool;
	function get_IsThreadPoolThread() : Bool;
	function get_ManagedThreadId() : Int;
	function get_Name() : String;
	function get_Priority() : ThreadPriority;
	function get_ThreadState() : ThreadState;
	function set_ApartmentState(value : ApartmentState) : ApartmentState;
	function set_CurrentCulture(value : cs.system.globalization.CultureInfo) : cs.system.globalization.CultureInfo;
	function set_CurrentUICulture(value : cs.system.globalization.CultureInfo) : cs.system.globalization.CultureInfo;
	function set_IsBackground(value : Bool) : Bool;
	function set_Name(value : String) : String;
	function set_Priority(value : ThreadPriority) : ThreadPriority;
	static var CurrentContext(get,never) : cs.system.runtime.remoting.contexts.Context;
	static var CurrentPrincipal(get,set) : cs.system.security.principal.IPrincipal;
	static var CurrentThread(get,never) : Thread;
	static function AllocateDataSlot() : cs.system.LocalDataStoreSlot;
	static function AllocateNamedDataSlot(name : String) : cs.system.LocalDataStoreSlot;
	static function BeginCriticalRegion() : Void;
	static function BeginThreadAffinity() : Void;
	static function EndCriticalRegion() : Void;
	static function EndThreadAffinity() : Void;
	static function FreeNamedDataSlot(name : String) : Void;
	static function GetData(slot : cs.system.LocalDataStoreSlot) : Dynamic;
	static function GetDomain() : cs.system.AppDomain;
	static function GetDomainID() : Int;
	static function GetNamedDataSlot(name : String) : cs.system.LocalDataStoreSlot;
	static function MemoryBarrier() : Void;
	static function ResetAbort() : Void;
	static function SetData(slot : cs.system.LocalDataStoreSlot, data : Dynamic) : Void;
	@:overload(function(millisecondsTimeout : Int) : Void {})
	static function Sleep(timeout : cs.system.TimeSpan) : Void;
	static function SpinWait(iterations : Int) : Void;
	@:overload(function(address : cs.Ref<cs.types.UInt8>) : cs.types.UInt8 {})
	@:overload(function(address : cs.Ref<cs.system.UIntPtr>) : cs.system.UIntPtr {})
	@:overload(function(address : cs.Ref<cs.types.UInt64>) : cs.types.UInt64 {})
	@:overload(function(address : cs.Ref<UInt>) : UInt {})
	@:overload(function(address : cs.Ref<cs.types.UInt16>) : cs.types.UInt16 {})
	@:overload(function(address : cs.Ref<Single>) : Single {})
	@:overload(function(address : cs.Ref<cs.types.Int8>) : cs.types.Int8 {})
	@:overload(function(address : cs.Ref<Dynamic>) : Dynamic {})
	@:overload(function(address : cs.Ref<cs.system.IntPtr>) : cs.system.IntPtr {})
	@:overload(function(address : cs.Ref<haxe.Int64>) : haxe.Int64 {})
	@:overload(function(address : cs.Ref<Int>) : Int {})
	@:overload(function(address : cs.Ref<cs.types.Int16>) : cs.types.Int16 {})
	static function VolatileRead(address : cs.Ref<Float>) : Float;
	@:overload(function(address : cs.Ref<cs.types.UInt8>, value : cs.types.UInt8) : Void {})
	@:overload(function(address : cs.Ref<cs.system.UIntPtr>, value : cs.system.UIntPtr) : Void {})
	@:overload(function(address : cs.Ref<cs.types.UInt64>, value : cs.types.UInt64) : Void {})
	@:overload(function(address : cs.Ref<UInt>, value : UInt) : Void {})
	@:overload(function(address : cs.Ref<cs.types.UInt16>, value : cs.types.UInt16) : Void {})
	@:overload(function(address : cs.Ref<Single>, value : Single) : Void {})
	@:overload(function(address : cs.Ref<cs.types.Int8>, value : cs.types.Int8) : Void {})
	@:overload(function(address : cs.Ref<Dynamic>, value : Dynamic) : Void {})
	@:overload(function(address : cs.Ref<cs.system.IntPtr>, value : cs.system.IntPtr) : Void {})
	@:overload(function(address : cs.Ref<haxe.Int64>, value : haxe.Int64) : Void {})
	@:overload(function(address : cs.Ref<Int>, value : Int) : Void {})
	@:overload(function(address : cs.Ref<cs.types.Int16>, value : cs.types.Int16) : Void {})
	static function VolatileWrite(address : cs.Ref<Float>, value : Float) : Void;
	static function Yield() : Bool;
	static function get_CurrentContext() : cs.system.runtime.remoting.contexts.Context;
	static function get_CurrentPrincipal() : cs.system.security.principal.IPrincipal;
	static function get_CurrentThread() : Thread;
	static function set_CurrentPrincipal(value : cs.system.security.principal.IPrincipal) : cs.system.security.principal.IPrincipal;
}
