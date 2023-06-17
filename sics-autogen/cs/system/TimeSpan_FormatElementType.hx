package cs.system;

@:nativeGen @:native("System.TimeSpan.FormatElementType") @:csNative extern enum TimeSpan_FormatElementType {
	Days;
	Hours;
	Minutes;
	Seconds;
	Ticks;
	TicksUppercase;
	Literal;
	EscapedChar;
	Error;
	End;
}
