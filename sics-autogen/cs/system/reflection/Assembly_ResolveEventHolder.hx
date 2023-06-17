package cs.system.reflection;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Assembly.ResolveEventHolder") extern class Assembly_ResolveEventHolder {
	@:event @:keep @:skipReflection private var ModuleResolve : ModuleResolveEventHandler;
	function new() : Void;
	function add_ModuleResolve(value : ModuleResolveEventHandler) : Void;
	function remove_ModuleResolve(value : ModuleResolveEventHandler) : Void;
}
