package cs.system.runtime.remoting.contexts;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.Remoting.Contexts.IContextProperty") extern interface IContextProperty {
	var Name(get,never) : String;
	function Freeze(newContext : Context) : Void;
	function IsNewContextOK(newCtx : Context) : Bool;
	function get_Name() : String;
}
