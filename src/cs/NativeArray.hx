package cs;

import haxe.extern.Rest;

extern class NativeArray<T> implements ArrayAccess<T> {
	/**
		Creates a new array with the specified elements.

		Usage:
		```haxe
		var elements = NativeArray.make(1,2,3,4,5,6);
		```
	**/
	static function make<T>(elements:Rest<T>):NativeArray<T>;
	
	/**
		Allocates a new array with size `len`
	**/
	function new(len:Int):Void;
	
	var Length(default, null):Int;
	
	/**
		Alias to array's `Length` property. Returns the size of the array
	**/
	var length(get, never):Int;
	private inline function get_length():Int {
		return Length;
	}
	
	function CopyTo(arr:NativeArray<T>, index:Int):Void;
	
	/**
		Returns an iterator so it's possible to use `for` with C#'s `NativeArray`
	**/
	extern inline function iterator():NativeArrayIterator<T>
		return new NativeArrayIterator(this);
}

@:dce private class NativeArrayIterator<T> {
	public var arr(default, null):NativeArray<T>;
	public var idx(default, null):UInt;

	inline public function new(arr) {
		this.arr = arr;
		this.idx = 0;
	}

	inline public function hasNext():Bool
		return this.idx < this.arr.Length;

	inline public function next():T {
		return this.arr[this.idx++];
	}
}
