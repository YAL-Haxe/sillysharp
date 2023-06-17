package cs.system.globalization;

@:nativeGen @:native("System.Globalization.CompareOptions") @:csNative extern enum CompareOptions {
	None;
	IgnoreCase;
	IgnoreNonSpace;
	IgnoreSymbols;
	IgnoreKanaType;
	IgnoreWidth;
	OrdinalIgnoreCase;
	StringSort;
	Ordinal;
}
