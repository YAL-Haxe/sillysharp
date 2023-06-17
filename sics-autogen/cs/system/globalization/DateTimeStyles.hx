package cs.system.globalization;

@:nativeGen @:native("System.Globalization.DateTimeStyles") @:csNative extern enum DateTimeStyles {
	None;
	AllowLeadingWhite;
	AllowTrailingWhite;
	AllowInnerWhite;
	AllowWhiteSpaces;
	NoCurrentDateDefault;
	AdjustToUniversal;
	AssumeLocal;
	AssumeUniversal;
	RoundtripKind;
}
