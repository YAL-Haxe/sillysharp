package cs.system.reflection;

@:nativeGen @:native("System.Reflection.PortableExecutableKinds") @:csNative extern enum PortableExecutableKinds {
	NotAPortableExecutableImage;
	ILOnly;
	Required32Bit;
	PE32Plus;
	Unmanaged32Bit;
	Preferred32Bit;
}
