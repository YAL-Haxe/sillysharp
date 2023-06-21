package cs.system.threading;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Threading.Monitor") extern final class Monitor {
	@:overload(function(obj : Dynamic) : Void {})
	static function Enter(obj : Dynamic, lockTaken : cs.Ref<Bool>) : Void;
	static function Exit(obj : Dynamic) : Void;
	static function IsEntered(obj : Dynamic) : Bool;
	static function Pulse(obj : Dynamic) : Void;
	static function PulseAll(obj : Dynamic) : Void;
	@:overload(function(obj : Dynamic) : Bool {})
	@:overload(function(obj : Dynamic, millisecondsTimeout : Int, lockTaken : cs.Ref<Bool>) : Void {})
	@:overload(function(obj : Dynamic, timeout : cs.system.TimeSpan, lockTaken : cs.Ref<Bool>) : Void {})
	@:overload(function(obj : Dynamic, lockTaken : cs.Ref<Bool>) : Void {})
	@:overload(function(obj : Dynamic, timeout : cs.system.TimeSpan) : Bool {})
	static function TryEnter(obj : Dynamic, millisecondsTimeout : Int) : Bool;
	@:overload(function(obj : Dynamic) : Bool {})
	@:overload(function(obj : Dynamic, timeout : cs.system.TimeSpan, exitContext : Bool) : Bool {})
	@:overload(function(obj : Dynamic, millisecondsTimeout : Int, exitContext : Bool) : Bool {})
	@:overload(function(obj : Dynamic, timeout : cs.system.TimeSpan) : Bool {})
	static function Wait(obj : Dynamic, millisecondsTimeout : Int) : Bool;
}
