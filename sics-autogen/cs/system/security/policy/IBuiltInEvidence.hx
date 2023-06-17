package cs.system.security.policy;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Security.Policy.IBuiltInEvidence") extern interface IBuiltInEvidence {
	function GetRequiredSize(verbose : Bool) : Int;
	function InitFromBuffer(buffer : cs.NativeArray<cs.types.Char16>, position : Int) : Int;
	function OutputToBuffer(buffer : cs.NativeArray<cs.types.Char16>, position : Int, verbose : Bool) : Int;
}
