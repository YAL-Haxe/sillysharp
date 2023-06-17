package cs.system;

@:nativeGen @:libType @:csNative @:native("System.AggregateException") extern class AggregateException extends Exception {
	var InnerExceptions(get,never) : cs.system.collections.objectmodel.ReadOnlyCollection_1<Exception>;
	@:overload(function() : Void {})
	@:overload(function(message : String, innerExceptions : cs.system.collections.generic.IEnumerable_1<Exception>) : Void {})
	@:overload(function(innerExceptions : cs.system.collections.generic.IEnumerable_1<Exception>) : Void {})
	@:overload(function(message : String, innerExceptions : cs.NativeArray<Exception>) : Void {})
	@:overload(function(innerExceptions : cs.NativeArray<Exception>) : Void {})
	@:overload(function(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void {})
	@:overload(function(message : String, innerException : Exception) : Void {})
	function new(message : String) : Void;
	function Flatten() : AggregateException;
	function GetBaseException() : Exception;
	function GetObjectData(info : cs.system.runtime.serialization.SerializationInfo, context : cs.system.runtime.serialization.StreamingContext) : Void;
	function Handle(predicate : Func_2<Exception,Bool>) : Void;
	function ToString() : String;
	function get_InnerExceptions() : cs.system.collections.objectmodel.ReadOnlyCollection_1<Exception>;
}
