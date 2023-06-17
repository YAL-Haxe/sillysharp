package cs.system.diagnostics.symbolstore;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Diagnostics.SymbolStore.ISymbolWriter") extern interface ISymbolWriter {
	function Close() : Void;
	function CloseMethod() : Void;
	function CloseNamespace() : Void;
	function CloseScope(endOffset : Int) : Void;
	function DefineDocument(url : String, language : cs.system.Guid, languageVendor : cs.system.Guid, documentType : cs.system.Guid) : ISymbolDocumentWriter;
	function DefineField(parent : SymbolToken, name : String, attributes : cs.system.reflection.FieldAttributes, signature : cs.NativeArray<cs.types.UInt8>, addrKind : SymAddressKind, addr1 : Int, addr2 : Int, addr3 : Int) : Void;
	function DefineGlobalVariable(name : String, attributes : cs.system.reflection.FieldAttributes, signature : cs.NativeArray<cs.types.UInt8>, addrKind : SymAddressKind, addr1 : Int, addr2 : Int, addr3 : Int) : Void;
	function DefineLocalVariable(name : String, attributes : cs.system.reflection.FieldAttributes, signature : cs.NativeArray<cs.types.UInt8>, addrKind : SymAddressKind, addr1 : Int, addr2 : Int, addr3 : Int, startOffset : Int, endOffset : Int) : Void;
	function DefineParameter(name : String, attributes : cs.system.reflection.ParameterAttributes, sequence : Int, addrKind : SymAddressKind, addr1 : Int, addr2 : Int, addr3 : Int) : Void;
	function DefineSequencePoints(document : ISymbolDocumentWriter, offsets : cs.NativeArray<Int>, lines : cs.NativeArray<Int>, columns : cs.NativeArray<Int>, endLines : cs.NativeArray<Int>, endColumns : cs.NativeArray<Int>) : Void;
	function Initialize(emitter : cs.system.IntPtr, filename : String, fFullBuild : Bool) : Void;
	function OpenMethod(method : SymbolToken) : Void;
	function OpenNamespace(name : String) : Void;
	function OpenScope(startOffset : Int) : Int;
	function SetMethodSourceRange(startDoc : ISymbolDocumentWriter, startLine : Int, startColumn : Int, endDoc : ISymbolDocumentWriter, endLine : Int, endColumn : Int) : Void;
	function SetScopeRange(scopeID : Int, startOffset : Int, endOffset : Int) : Void;
	function SetSymAttribute(parent : SymbolToken, name : String, data : cs.NativeArray<cs.types.UInt8>) : Void;
	function SetUnderlyingWriter(underlyingWriter : cs.system.IntPtr) : Void;
	function SetUserEntryPoint(entryMethod : SymbolToken) : Void;
	function UsingNamespace(fullName : String) : Void;
}
