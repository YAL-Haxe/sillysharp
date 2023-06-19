package cs.system;

@:nativeGen @:libType @:csNative @:native("System.TimeZoneInfo") extern final class TimeZoneInfo implements IEquatable_1<TimeZoneInfo> implements cs.system.runtime.serialization.ISerializable implements cs.system.runtime.serialization.IDeserializationCallback {
	var BaseUtcOffset(get,never) : TimeSpan;
	var DaylightName(get,never) : String;
	var DisplayName(get,never) : String;
	var Id(get,never) : String;
	var StandardName(get,never) : String;
	var SupportsDaylightSavingTime(get,never) : Bool;
	function GetAdjustmentRules() : cs.NativeArray<TimeZoneInfo_AdjustmentRule>;
	@:overload(function(dateTime : DateTime) : cs.NativeArray<TimeSpan> {})
	function GetAmbiguousTimeOffsets(dateTimeOffset : DateTimeOffset) : cs.NativeArray<TimeSpan>;
	@:overload(function(dateTime : DateTime) : TimeSpan {})
	function GetUtcOffset(dateTimeOffset : DateTimeOffset) : TimeSpan;
	function HasSameRules(other : TimeZoneInfo) : Bool;
	@:overload(function(dateTime : DateTime) : Bool {})
	function IsAmbiguousTime(dateTimeOffset : DateTimeOffset) : Bool;
	@:overload(function(dateTime : DateTime) : Bool {})
	function IsDaylightSavingTime(dateTimeOffset : DateTimeOffset) : Bool;
	function IsInvalidTime(dateTime : DateTime) : Bool;
	function ToSerializedString() : String;
	function ToString() : String;
	function get_BaseUtcOffset() : TimeSpan;
	function get_DaylightName() : String;
	function get_DisplayName() : String;
	function get_Id() : String;
	function get_StandardName() : String;
	function get_SupportsDaylightSavingTime() : Bool;
	static var Local(get,never) : TimeZoneInfo;
	static var Utc(get,never) : TimeZoneInfo;
	static function ClearCachedData() : Void;
	@:overload(function(dateTime : DateTime, destinationTimeZone : TimeZoneInfo) : DateTime {})
	@:overload(function(dateTimeOffset : DateTimeOffset, destinationTimeZone : TimeZoneInfo) : DateTimeOffset {})
	static function ConvertTime(dateTime : DateTime, sourceTimeZone : TimeZoneInfo, destinationTimeZone : TimeZoneInfo) : DateTime;
	@:overload(function(dateTime : DateTime, destinationTimeZoneId : String) : DateTime {})
	@:overload(function(dateTimeOffset : DateTimeOffset, destinationTimeZoneId : String) : DateTimeOffset {})
	static function ConvertTimeBySystemTimeZoneId(dateTime : DateTime, sourceTimeZoneId : String, destinationTimeZoneId : String) : DateTime;
	@:native("ConvertTimeFromUtc") static function _ConvertTimeFromUtc(dateTime : DateTime, destinationTimeZone : TimeZoneInfo) : DateTime;
	static function ConvertTimeFromUtc(dateTime : DateTime, destinationTimeZone : TimeZoneInfo) : DateTime;
	@:overload(function(dateTime : DateTime) : DateTime {})
	static function ConvertTimeToUtc(dateTime : DateTime, sourceTimeZone : TimeZoneInfo) : DateTime;
	@:overload(function(id : String, baseUtcOffset : TimeSpan, displayName : String, standardDisplayName : String) : TimeZoneInfo {})
	@:overload(function(id : String, baseUtcOffset : TimeSpan, displayName : String, standardDisplayName : String, daylightDisplayName : String, adjustmentRules : cs.NativeArray<TimeZoneInfo_AdjustmentRule>, disableDaylightSavingTime : Bool) : TimeZoneInfo {})
	static function CreateCustomTimeZone(id : String, baseUtcOffset : TimeSpan, displayName : String, standardDisplayName : String, daylightDisplayName : String, adjustmentRules : cs.NativeArray<TimeZoneInfo_AdjustmentRule>) : TimeZoneInfo;
	static function FindSystemTimeZoneById(id : String) : TimeZoneInfo;
	static function FromSerializedString(source : String) : TimeZoneInfo;
	static function GetSystemTimeZones() : cs.system.collections.objectmodel.ReadOnlyCollection_1<TimeZoneInfo>;
	static function get_Local() : TimeZoneInfo;
	static function get_Utc() : TimeZoneInfo;
}
