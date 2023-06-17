package cs.system.reflection.emit;

@:nativeGen @:native("System.Reflection.Emit.FlowControl") @:csNative extern enum FlowControl {
	Branch;
	Break;
	Call;
	Cond_Branch;
	Meta;
	Next;
	Phi;
	Return;
	Throw;
}
