package cs.system;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Delegate") extern class Delegate implements ICloneable implements cs.system.runtime.serialization.ISerializable {
	var Method(get,never) : cs.system.reflection.MethodInfo;
	var Target(get,never) : Dynamic;
	@:overload(function(target : Dynamic, method : String) : Void {})
	@:protected private function new(target : Type, method : String) : Void;
	function Clone() : Dynamic;
	@:protected private function CombineImpl(d : Delegate) : Delegate;
	function DynamicInvoke(args : cs.NativeArray<Dynamic>) : Dynamic;
	@:protected private function DynamicInvokeImpl(args : cs.NativeArray<Dynamic>) : Dynamic;
	function GetInvocationList() : cs.NativeArray<Delegate>;
	@:protected private function GetMethodImpl() : cs.system.reflection.MethodInfo;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	@:protected private function RemoveImpl(d : Delegate) : Delegate;
	function get_Method() : cs.system.reflection.MethodInfo;
	function get_Target() : Dynamic;
	@:overload(function(a : Delegate, b : Delegate) : Delegate {})
	static function Combine(delegates : cs.NativeArray<Delegate>) : Delegate;
	@:overload(function(type : Type, firstArgument : Dynamic, method : cs.system.reflection.MethodInfo, throwOnBindFailure : Bool) : Delegate {})
	@:overload(function(type : Type, target : Dynamic, method : String, ignoreCase : Bool) : Delegate {})
	@:overload(function(type : Type, target : Dynamic, method : String, ignoreCase : Bool, throwOnBindFailure : Bool) : Delegate {})
	@:overload(function(type : Type, target : Type, method : String, ignoreCase : Bool) : Delegate {})
	@:overload(function(type : Type, target : Type, method : String) : Delegate {})
	@:overload(function(type : Type, target : Type, method : String, ignoreCase : Bool, throwOnBindFailure : Bool) : Delegate {})
	@:overload(function(type : Type, target : Dynamic, method : String) : Delegate {})
	@:overload(function(type : Type, method : cs.system.reflection.MethodInfo) : Delegate {})
	@:overload(function(type : Type, method : cs.system.reflection.MethodInfo, throwOnBindFailure : Bool) : Delegate {})
	static function CreateDelegate(type : Type, firstArgument : Dynamic, method : cs.system.reflection.MethodInfo) : Delegate;
	static function Remove(source : Delegate, value : Delegate) : Delegate;
	static function RemoveAll(source : Delegate, value : Delegate) : Delegate;
	static function op_Equality(d1 : Delegate, d2 : Delegate) : Bool;
	static function op_Inequality(d1 : Delegate, d2 : Delegate) : Bool;
}
