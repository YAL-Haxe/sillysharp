package cs.system.diagnostics.symbolstore;

@:nativeGen @:native("System.Diagnostics.SymbolStore.SymAddressKind") @:csNative extern enum SymAddressKind {
	ILOffset;
	NativeRVA;
	NativeRegister;
	NativeRegisterRelative;
	NativeOffset;
	NativeRegisterRegister;
	NativeRegisterStack;
	NativeStackRegister;
	BitField;
	NativeSectionOffset;
}
