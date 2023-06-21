package cs;
import cs.system.Type;

/**
 * ...
 * @author YellowAfterlife
 */
extern class Lib {
	static inline function error(msg:String):Void {
		Syntax.code('throw new System.Exception({0})', msg);
	}
	
	/** Transforms to `(cl)obj` */
	static function typecast<T>(obj:Dynamic, cl:Class<T>):T;
	
	/** Transforms to `obj as cl` */
	static function as<T>(obj:Dynamic, cl:Class<T>):T;
	
	/** Outputs `obj` without casting anything */
	static function noncast<T>(obj:Dynamic, ?cl:Class<T>):T;
	
	/** Transforms to `default(T)` */
	static function defaultValue<T>(?cl:Class<T>):T;
	
	/** Transforms to `((char)c).ToString()` */
	static function fromCharCode(c:Int):String;
	
	// Haxe fields:
	/**
		Gets the native System.Type from the supplied object. Will throw an exception in case of null being passed.
	**/
	static inline function getNativeType(obj:Dynamic):Type {
		return untyped obj.GetType();
	}
	
	/**
		Rethrow an exception. This is useful when manually filtering an exception in order
		to keep the previous exception stack.
	**/
	extern inline public static function rethrow(e:Dynamic):Void {
		throw untyped __rethrow__;
	}
	
	/**
		Creates an "unchecked" block, which does not throw exceptions for overflows.

		Usage:
			cs.Lib.unchecked({
				var x = 1000;
				while(true)
				{
					x *= x;
				}
			});
		This method only exists at compile-time, so it can't be called via reflection.
	**/
	extern public static inline function unchecked<V>(block:V):Void {
		untyped __unchecked__(block);
	}
	
	/**
		Creates a "checked" block, which throws exceptions for overflows.

		Usage:
			cs.Lib.checked({
				var x = 1000;
				while(true)
				{
					x *= x;
				}
			});
		This method only exists at compile-time, so it can't be called via reflection.
	**/
	extern public static inline function checked<V>(block:V):Void {
		untyped __checked__(block);
	}

	/**
		Ensures that one thread does not enter a critical section of code while another thread
		is in the critical section. If another thread attempts to enter a locked code, it
		will wait, block, until the object is released.

		This method only exists at compile-time, so it can't be called via reflection.
	**/
	extern public static inline function lock<O, V>(obj:O, block:V):Void {
		untyped __lock__(obj, block);
	}

	// Unsafe code manipulation

	#if unsafe
	/**
		Marks its parameters as fixed objects inside the defined block.
		The first variable declarations that use cs.Lib.pointerOfArray() will be the fixed definitions.
		Usage:
			cs.Lib.fixed({
				var obj1 = cs.Lib.pointerOfArray(someArray);
				var obj2 = cs.Lib.pointerOfArray(someArray2);
				var obj3 = cs.Lib.pointerOfArray(someArray3);
				//from now on, obj1, obj2 and obj3 are fixed
				//we cannot change obj1, obj2 or obj3 variables like this:
				//obj1++;
			});

		This method only exists at compile-time, so it can't be called via reflection.
	**/
	extern public static inline function fixed<V>(block:V):Void {
		untyped __fixed__(block);
	}

	/**
		Marks the contained block as an unsafe block, meaning that it can contain unsafe code.
		Usage:
			cs.Lib.unsafe({
				//unsafe code is allowed inside here
			});

		This method only exists at compile-time, so it can't be called via reflection.
	**/
	extern public static inline function unsafe<V>(block:V):Void {
		untyped __unsafe__(block);
	}

	/**
		Gets the pointer to the address of current local. Equivalent to the "&" operator in C#
		Usage:
			var x:Int = 0;
			cs.Lib.unsafe({
				var addr = cs.Lib.addressOf(x);
				x[0] = 42;
			});
			trace(x); //42

		This method only exists at compile-time, so it can't be called via reflection.
		Warning: This method will only work if a local variable is passed as an argument.
	**/
	extern public static inline function addressOf<T>(variable:T):cs.Pointer<T> {
		return untyped __addressOf__(variable);
	}

	/**
		Gets the value of the pointer address.
		Usage:
			var x:Int = 0;
			cs.Lib.unsafe({
				var addr = cs.Lib.addressOf(x);
				trace(cs.Lib.valueOf(addr)); //0
				addr[0] = 42;
				trace(cs.Lib.valueOf(addr)); //42
			});
			trace(x); //42

		This method only exists at compile-time, so it can't be called via reflection.
	**/
	extern public static inline function valueOf<T>(pointer:cs.Pointer<T>):T {
		return untyped __valueOf__(pointer);
	}

	/**
		Transforms a managed native array into a Pointer. Must be inside a fixed statement
		Usage:
			var x:cs.NativeArray<Int> = new cs.NativeArray(1);
			cs.Lib.unsafe({
				cs.Lib.fixed({
					var addr = cs.Lib.pointerOfArray(x);
					trace(cs.Lib.valueOf(addr)); //0
					addr[0] = 42;
					trace(cs.Lib.valueOf(addr)); //42
				});
			});
			trace(x[0]); //42

		This method only exists at compile-time, so it can't be called via reflection.
	**/
	extern public static inline function pointerOfArray<T>(array:cs.NativeArray<T>):cs.Pointer<T> {
		return untyped __ptr__(array);
	}

	/**
		Returns the byte size of the given struct. Only works with structs and basic types.
	**/
	extern public static inline function sizeof(struct:Class<Dynamic>):Int {
		return untyped __sizeof__(struct);
	}
	#end
}