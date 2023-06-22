package cs.system;
import cs.NativeArray;

/**
 * Haxe targets .NET 4.5 at most, while spans are from .NET 5
 * @author YellowAfterlife
 */
@:nativeGen @:abstract @:libType @:csNative
extern class Span<T> implements ArrayAccess<T> {
	#if unsafe
	@:overload(function(ptr:cs.Pointer, len:Int):Void {})
	#end
	@:overload(function(arr:NativeArray<T>, offset:Int, len:Int):Void {})
	@:overload(function(val:T):Void {})
	function new(arr:NativeArray<T>);
	
	var Length(default, never):Int;
	
	var length(get, never):Int;
	private inline function get_length():Int return Length;
	
	var IsEmpty(default, never):Bool;
	@:skipReflection function get_Item(index : Int) : T;
	@:skipReflection function set_Item(index : Int, value : T) : Void;
	
	function Clear():Void;
	
	function CopyTo(destination:Span<T>):Void;
	
	function Fill(value:T):Void;
	
	@:overload(function(start:Int, length:Int):Span<T> {})
	function Slice(start:Int):Span<T>;
	
	function ToArray():NativeArray<T>;
	
	function TryCopyTo(destination:Span<T>):Bool;
}