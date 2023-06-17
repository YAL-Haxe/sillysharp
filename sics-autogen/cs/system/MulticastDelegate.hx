package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.MulticastDelegate") extern class MulticastDelegate extends Delegate {
	@:overload(function(target : Dynamic, method : String) : Void {})
	@:protected private function new(target : Type, method : String) : Void;
	@:protected private function CombineImpl(follow : Delegate) : Delegate;
	@:protected private function DynamicInvokeImpl(args : cs.NativeArray<Dynamic>) : Dynamic;
	function GetInvocationList() : cs.NativeArray<Delegate>;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	@:protected private function RemoveImpl(value : Delegate) : Delegate;
	static function op_Equality(d1 : MulticastDelegate, d2 : MulticastDelegate) : Bool;
	static function op_Inequality(d1 : MulticastDelegate, d2 : MulticastDelegate) : Bool;
}
