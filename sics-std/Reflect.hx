package;
import cs.Lib;

/**
 * ...
 * @author YellowAfterlife
 */
@:coreApi @:std 
class Reflect {
	@:pure
	public static function hasField(o:Dynamic, field:String):Bool {
		Lib.error("todo");
		return false;
	}
	
	@:pure
	public static function field(o:Dynamic, field:String):Dynamic {
		Lib.error("todo");
		return false;
	}
	
	public static function setField(o:Dynamic, field:String, value:Dynamic):Void {
		Lib.error("todo");
	}
	
	public static function deleteField(o:Dynamic, field:String):Bool {
		Lib.error("todo");
		return false;
	}
	
	public static function getProperty(o:Dynamic, field:String):Dynamic {
		Lib.error("todo");
		return null;
	}
	
	public static function setProperty(o:Dynamic, field:String, value:Dynamic):Void {
		Lib.error("todo");
	}
	
	public static function callMethod(o:Dynamic, func:haxe.Constraints.Function, args:Array<Dynamic>):Dynamic {
		Lib.error("todo");
		return null;
	}

	public static function fields(o:Dynamic):Array<String> {
		Lib.error("todo");
		return null;
	}
	
	public static function copy<T>(o:T):T {
		Lib.error("todo");
		return null;
	}
	
	public static function compare<T>(a:T, b:T):Int {
		Lib.error("todo");
		return 0;
	}
	
	public static function compareMethods(f1:Dynamic, f2:Dynamic):Bool {
		Lib.error("todo");
		return false;
	}
	
	public static function isFunction(f:Dynamic):Bool {
		Lib.error("todo");
		return null;
	}
	
	public static function isObject(v:Dynamic):Bool {
		Lib.error("todo");
		return null;
	}
	
	public static inline function isEnumValue(v:Dynamic):Bool {
		Lib.error("todo");
		return false;
	}
	
	@:overload(function(f:Array<Dynamic>->Void):Dynamic {})
	public static function makeVarArgs(f:Array<Dynamic>->Dynamic):Dynamic {
		Lib.error("todo");
		return null;
	}
}