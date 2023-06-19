package cs.system;

@:nativeGen @:struct @:libType @:csNative @:native("System.TimeZoneInfo.TransitionTime") extern final class TimeZoneInfo_TransitionTime extends ValueType implements IEquatable_1<TimeZoneInfo_TransitionTime> implements cs.system.runtime.serialization.ISerializable implements cs.system.runtime.serialization.IDeserializationCallback {
	var Day(get,never) : Int;
	var DayOfWeek(get,never) : DayOfWeek;
	var IsFixedDateRule(get,never) : Bool;
	var Month(get,never) : Int;
	var TimeOfDay(get,never) : DateTime;
	var Week(get,never) : Int;
	function get_Day() : Int;
	function get_DayOfWeek() : DayOfWeek;
	function get_IsFixedDateRule() : Bool;
	function get_Month() : Int;
	function get_TimeOfDay() : DateTime;
	function get_Week() : Int;
	static function CreateFixedDateRule(timeOfDay : DateTime, month : Int, day : Int) : TimeZoneInfo_TransitionTime;
	static function CreateFloatingDateRule(timeOfDay : DateTime, month : Int, week : Int, dayOfWeek : DayOfWeek) : TimeZoneInfo_TransitionTime;
	static function op_Equality(t1 : TimeZoneInfo_TransitionTime, t2 : TimeZoneInfo_TransitionTime) : Bool;
	static function op_Inequality(t1 : TimeZoneInfo_TransitionTime, t2 : TimeZoneInfo_TransitionTime) : Bool;
}
