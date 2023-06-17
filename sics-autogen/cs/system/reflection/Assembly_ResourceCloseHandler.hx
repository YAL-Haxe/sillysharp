package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Assembly.ResourceCloseHandler") extern class Assembly_ResourceCloseHandler {
	function new(module : Module) : Void;
	function OnClose(sender : Dynamic, e : cs.system.EventArgs) : Void;
}
