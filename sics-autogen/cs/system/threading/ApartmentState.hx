package cs.system.threading;

@:nativeGen @:native("System.Threading.ApartmentState") @:csNative extern enum ApartmentState {
	STA;
	MTA;
	Unknown;
}
