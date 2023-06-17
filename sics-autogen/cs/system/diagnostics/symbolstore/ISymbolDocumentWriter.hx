package cs.system.diagnostics.symbolstore;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Diagnostics.SymbolStore.ISymbolDocumentWriter") extern interface ISymbolDocumentWriter {
	function SetCheckSum(algorithmId : cs.system.Guid, checkSum : cs.NativeArray<cs.types.UInt8>) : Void;
	function SetSource(source : cs.NativeArray<cs.types.UInt8>) : Void;
}
