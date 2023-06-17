package cs.system.reflection.emit;

@:nativeGen @:libType @:csNative @:native("System.Reflection.Emit.ILGenerator") extern class ILGenerator implements cs.system.runtime.interopservices._ILGenerator {
	var ILOffset(get,never) : Int;
	function BeginCatchBlock(exceptionType : cs.system.Type) : Void;
	function BeginExceptFilterBlock() : Void;
	function BeginExceptionBlock() : Label;
	function BeginFaultBlock() : Void;
	function BeginFinallyBlock() : Void;
	function BeginScope() : Void;
	@:overload(function(localType : cs.system.Type) : LocalBuilder {})
	function DeclareLocal(localType : cs.system.Type, pinned : Bool) : LocalBuilder;
	function DefineLabel() : Label;
	@:overload(function(opcode : OpCode) : Void {})
	@:overload(function(opcode : OpCode, cls : cs.system.Type) : Void {})
	@:overload(function(opcode : OpCode, str : String) : Void {})
	@:overload(function(opcode : OpCode, arg : Single) : Void {})
	@:overload(function(opcode : OpCode, signature : SignatureHelper) : Void {})
	@:overload(function(opcode : OpCode, arg : cs.types.Int8) : Void {})
	@:overload(function(opcode : OpCode, meth : cs.system.reflection.MethodInfo) : Void {})
	@:overload(function(opcode : OpCode, local : LocalBuilder) : Void {})
	@:overload(function(opcode : OpCode, labels : cs.NativeArray<Label>) : Void {})
	@:overload(function(opcode : OpCode, label : Label) : Void {})
	@:overload(function(opcode : OpCode, arg : haxe.Int64) : Void {})
	@:overload(function(opcode : OpCode, arg : Int) : Void {})
	@:overload(function(opcode : OpCode, arg : cs.types.Int16) : Void {})
	@:overload(function(opcode : OpCode, field : cs.system.reflection.FieldInfo) : Void {})
	@:overload(function(opcode : OpCode, arg : Float) : Void {})
	@:overload(function(opcode : OpCode, con : cs.system.reflection.ConstructorInfo) : Void {})
	function Emit(opcode : OpCode, arg : cs.types.UInt8) : Void;
	function EmitCall(opcode : OpCode, methodInfo : cs.system.reflection.MethodInfo, optionalParameterTypes : cs.NativeArray<cs.system.Type>) : Void;
	@:overload(function(opcode : OpCode, unmanagedCallConv : cs.system.runtime.interopservices.CallingConvention, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>) : Void {})
	function EmitCalli(opcode : OpCode, callingConvention : cs.system.reflection.CallingConventions, returnType : cs.system.Type, parameterTypes : cs.NativeArray<cs.system.Type>, optionalParameterTypes : cs.NativeArray<cs.system.Type>) : Void;
	@:overload(function(fld : cs.system.reflection.FieldInfo) : Void {})
	@:overload(function(value : String) : Void {})
	function EmitWriteLine(localBuilder : LocalBuilder) : Void;
	function EndExceptionBlock() : Void;
	function EndScope() : Void;
	function MarkLabel(loc : Label) : Void;
	function MarkSequencePoint(document : cs.system.diagnostics.symbolstore.ISymbolDocumentWriter, startLine : Int, startColumn : Int, endLine : Int, endColumn : Int) : Void;
	function ThrowException(excType : cs.system.Type) : Void;
	function UsingNamespace(usingNamespace : String) : Void;
	function get_ILOffset() : Int;
}
