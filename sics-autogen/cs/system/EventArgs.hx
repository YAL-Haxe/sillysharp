package cs.system;

@:nativeGen @:libType @:csNative @:native("System.EventArgs") extern class EventArgs {
	function new() : Void;
	@:readOnly static var Empty(default,never) : EventArgs;
}
