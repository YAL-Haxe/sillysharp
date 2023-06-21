package;
import cs.Syntax;
using StringTools;

/**
 * ...
 * @author YellowAfterlife
 */
@:std @:coreApi class Std {
	@:deprecated('Std.is is deprecated. Use Std.isOfType instead.')
	public static inline function is(v:Dynamic, t:Dynamic):Bool {
		return isOfType(v, t);
	}

	public static inline function isOfType(v:Dynamic, t:Dynamic):Bool {
		return Syntax.code("{0} is {1}", v, t);
	}
	
	@:pure
	public static function string(s:Dynamic):String {
		return Syntax.code("({0}).ToString()", s);
	}
	
	public static function int(x:Float):Int {
		return Syntax.code("(int)({0})", x);
	}
	
	static inline function isSpaceChar(code:Int):Bool
		return (code > 8 && code < 14) || code == 32;

	static inline function isHexPrefix(cur:Int, next:Int):Bool
		return cur == '0'.code && (next == 'x'.code || next == 'X'.code);

	static inline function isDecimalDigit(code:Int):Bool
		return '0'.code <= code && code <= '9'.code;

	static inline function isHexadecimalDigit(code:Int):Bool
		return isDecimalDigit(code) || ('a'.code <= code && code <= 'f'.code) || ('A'.code <= code && code <= 'F'.code);
	
	@:noCFor
	public static function parseInt(x:String):Null<Int> {
		if (x == null)
			return null;

		final len = x.length;
		var index = 0;

		inline function hasIndex(index:Int)
			return index < len;

		// skip whitespace
		while (hasIndex(index)) {
			if (!isSpaceChar(x.unsafeCodeAt(index)))
				break;
			++index;
		}

		// handle sign
		final isNegative = hasIndex(index) && {
			final sign = x.unsafeCodeAt(index);
			if (sign == '-'.code || sign == '+'.code) {
				++index;
			}
			sign == '-'.code;
		}

		// handle base
		final isHexadecimal = hasIndex(index + 1) && isHexPrefix(x.unsafeCodeAt(index), x.unsafeCodeAt(index + 1));
		if (isHexadecimal)
			index += 2; // skip prefix

		// handle digits
		final firstInvalidIndex = {
			var cur = index;
			if (isHexadecimal) {
				while (hasIndex(cur)) {
					if (!isHexadecimalDigit(x.unsafeCodeAt(cur)))
						break;
					++cur;
				}
			} else {
				while (hasIndex(cur)) {
					if (!isDecimalDigit(x.unsafeCodeAt(cur)))
						break;
					++cur;
				}
			}
			cur;
		}

		// no valid digits
		if (index == firstInvalidIndex)
			return null;

		final result = cs.system.Convert.ToInt32(x.substring(index, firstInvalidIndex), if (isHexadecimal) 16 else 10);
		return if (isNegative) -result else result;
	}

	public static function parseFloat(x:String):Float {
		if (x == null)
			return Math.NaN;
		x = StringTools.ltrim(x);
		var found = false,
			hasDot = false,
			hasSign = false,
			hasE = false,
			hasESign = false,
			hasEData = false;
		var i = -1;
		inline function getch(i:Int):Int
			return untyped x[i];

		while (++i < x.length) {
			var chr = getch(i);
			if (chr >= '0'.code && chr <= '9'.code) {
				if (hasE) {
					hasEData = true;
				}
				found = true;
			} else
				switch (chr) {
					case 'e'.code | 'E'.code if (!hasE):
						hasE = true;
					case '.'.code if (!hasDot):
						hasDot = true;
					case '-'.code, '+'.code if (!found && !hasSign):
						hasSign = true;
					case '-'.code | '+'.code if (found && !hasESign && hasE && !hasEData):
						hasESign = true;
					case _:
						break;
				}
		}
		if (hasE && !hasEData) {
			i--;
			if (hasESign)
				i--;
		}
		if (i != x.length) {
			x = x.substr(0, i);
		}
		return Syntax.code("double.TryParse({0}, System.Globalization.CultureInfo.InvariantCulture, out var r) ? r : double.NaN", x);
	}

	extern inline public static function downcast<T:{}, S:T>(value:T, c:Class<S>):S {
		return cs.Lib.as(value, c);
	}

	@:deprecated('Std.instance() is deprecated. Use Std.downcast() instead.')
	extern inline public static function instance<T:{}, S:T>(value:T, c:Class<S>):S {
		return downcast(value, c);
	}

	public static function random(x:Int):Int {
		if (x <= 0)
			return 0;
		return untyped Math.rand.Next(x);
	}
}