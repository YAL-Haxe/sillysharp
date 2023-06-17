package cs.system.threading;

@:nativeGen @:struct @:libType @:csNative @:native("System.Threading.AsyncFlowControl") extern final class AsyncFlowControl extends cs.system.ValueType implements cs.system.IDisposable {
	function Dispose() : Void;
	function Undo() : Void;
	static function op_Equality(a : AsyncFlowControl, b : AsyncFlowControl) : Bool;
	static function op_Inequality(a : AsyncFlowControl, b : AsyncFlowControl) : Bool;
}
