package cs.system.globalization;

@:nativeGen @:native("System.Globalization.NumberStyles") @:csNative extern enum NumberStyles {
	None;
	AllowLeadingWhite;
	AllowTrailingWhite;
	AllowLeadingSign;
	Integer;
	AllowTrailingSign;
	AllowParentheses;
	AllowDecimalPoint;
	AllowThousands;
	Number;
	AllowExponent;
	Float;
	AllowCurrencySymbol;
	Currency;
	Any;
	AllowHexSpecifier;
	HexNumber;
}
