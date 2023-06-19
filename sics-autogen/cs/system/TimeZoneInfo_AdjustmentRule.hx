package cs.system;

@:nativeGen @:libType @:csNative @:native("System.TimeZoneInfo.AdjustmentRule") extern final class TimeZoneInfo_AdjustmentRule implements IEquatable_1<TimeZoneInfo_AdjustmentRule> implements cs.system.runtime.serialization.ISerializable implements cs.system.runtime.serialization.IDeserializationCallback {
	var DateEnd(get,never) : DateTime;
	var DateStart(get,never) : DateTime;
	var DaylightDelta(get,never) : TimeSpan;
	var DaylightTransitionEnd(get,never) : TimeZoneInfo_TransitionTime;
	var DaylightTransitionStart(get,never) : TimeZoneInfo_TransitionTime;
	function get_DateEnd() : DateTime;
	function get_DateStart() : DateTime;
	function get_DaylightDelta() : TimeSpan;
	function get_DaylightTransitionEnd() : TimeZoneInfo_TransitionTime;
	function get_DaylightTransitionStart() : TimeZoneInfo_TransitionTime;
	static function CreateAdjustmentRule(dateStart : DateTime, dateEnd : DateTime, daylightDelta : TimeSpan, daylightTransitionStart : TimeZoneInfo_TransitionTime, daylightTransitionEnd : TimeZoneInfo_TransitionTime) : TimeZoneInfo_AdjustmentRule;
}
