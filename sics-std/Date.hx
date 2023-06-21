/*
 * Copyright (C)2005-2019 Haxe Foundation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

 import cs.system.DateTime;
 import cs.system.DateTimeKind;
 import cs.system.TimeSpan;
 import haxe.Int64;
 
 #if core_api_serialize
 @:meta(System.Serializable)
 #end
@:std @:coreApi class Date {
	@:readOnly private static var epochTicks:Int64 = new DateTime(1970, 1, 1).Ticks;
 
	private var date:DateTime;
	private var dateUTC:DateTime;
 
	public function new(year:Int, month:Int, day:Int, hour:Int, min:Int, sec:Int):Void {
		if (day <= 0)
			day = 1;
		if (year <= 0)
			year = 1;
		date = new DateTime(year, month + 1, day, hour, min, sec, DateTimeKind.Local);
		dateUTC = date.ToUniversalTime();
	}
 
	private static function create(native:DateTime):Date {
		var r = new Date(1, 1, 1, 1, 1, 1);
		if (native.Kind == DateTimeKind.Utc) {
			r.dateUTC = native;
			r.date = r.dateUTC.ToLocalTime();
		} else {
			r.date = native;
			r.dateUTC = r.date.ToUniversalTime();
		}
		return r;
	}
 
	public inline function getTime():Float {
		#if (net_ver < 35)
		return cast(cs.system.TimeZone.CurrentTimeZone.ToUniversalTime(date).Ticks - epochTicks, Float) / cast(TimeSpan.TicksPerMillisecond, Float);
		#else
		return cast(cs.system.TimeZoneInfo.ConvertTimeToUtc(date).Ticks - epochTicks, Float) / cast(TimeSpan.TicksPerMillisecond, Float);
		#end
	}
 
	public inline function getHours():Int {
		return date.Hour;
	}
 
	public inline function getMinutes():Int {
		return date.Minute;
	}
 
	public inline function getSeconds():Int {
		return date.Second;
	}
 
	public inline function getFullYear():Int {
		return date.Year;
	}
 
	public inline function getMonth():Int {
		return date.Month - 1;
	}
 
	public inline function getDate():Int {
		return date.Day;
	}
 
	public inline function getDay():Int {
		return cast(date.DayOfWeek, Int);
	}
 
	public inline function getUTCHours():Int {
		return dateUTC.Hour;
	}
 
	public inline function getUTCMinutes():Int {
		return dateUTC.Minute;
	}
 
	public inline function getUTCSeconds():Int {
		return dateUTC.Second;
	}
 
	public inline function getUTCFullYear():Int {
		return dateUTC.Year;
	}
 
	public inline function getUTCMonth():Int {
		return dateUTC.Month - 1;
	}
 
	public inline function getUTCDate():Int {
		return dateUTC.Day;
	}
 
	public inline function getUTCDay():Int {
		return cast(dateUTC.DayOfWeek, Int);
	}
 
	public inline function getTimezoneOffset():Int {
		return Std.int((cast(dateUTC.Ticks - date.Ticks, Float) / cast(TimeSpan.TicksPerMillisecond, Float)) / 60000.);
	}
 
	public function toString():String {
		return date.ToString("yyyy-MM-dd HH\\:mm\\:ss");
	}
 
	static public inline function now():Date {
		return create(DateTime.Now);
	}
 
	static public inline function fromTime(t:Float):Date {
		#if (net_ver < 35)
		return create(cs.system.TimeZone.CurrentTimeZone.ToLocalTime(new DateTime(cast(t * cast(TimeSpan.TicksPerMillisecond, Float), Int64) + epochTicks)));
		#else
		return create(cs.system.TimeZoneInfo.ConvertTimeFromUtc(new DateTime(cast(t * cast(TimeSpan.TicksPerMillisecond, Float), Int64) + epochTicks),
			cs.system.TimeZoneInfo.Local));
		#end
	}
 
	static public function fromString(s:String):Date {
		switch (s.length) {
			case 8: // hh:mm:ss
				var k = s.split(":");
				return create(new DateTime(1970, 1, 1, Std.parseInt(k[0]), Std.parseInt(k[1]), Std.parseInt(k[2]), DateTimeKind.Utc));
			case 10: // YYYY-MM-DD
				var k = s.split("-");
				return create(new DateTime(Std.parseInt(k[0]), Std.parseInt(k[1]), Std.parseInt(k[2]), 0, 0, 0, DateTimeKind.Local));
			case 19: // YYYY-MM-DD hh:mm:ss
				var k = s.split(" ");
				var y = k[0].split("-");
				var t = k[1].split(":");
				return create(new DateTime(Std.parseInt(y[0]), Std.parseInt(y[1]), Std.parseInt(y[2]), Std.parseInt(t[0]), Std.parseInt(t[1]), Std.parseInt(t[2]), DateTimeKind.Local));
			default:
				throw "Invalid date format : " + s;
		}
	}
 
	private static inline function fromNative(d:cs.system.DateTime):Date {
		return create(d);
	}
 }
 