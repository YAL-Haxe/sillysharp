package cs.system;

@:nativeGen @:native("System.UriKind") @:csNative extern enum UriKind {
	RelativeOrAbsolute;
	Absolute;
	Relative;
}
