package cs.system.globalization;

@:nativeGen @:libType @:csNative @:native("System.Globalization.SortKey") extern class SortKey {
	var KeyData(get,never) : cs.NativeArray<cs.types.UInt8>;
	var OriginalString(get,never) : String;
	function ToString() : String;
	function get_KeyData() : cs.NativeArray<cs.types.UInt8>;
	function get_OriginalString() : String;
	static function Compare(sortkey1 : SortKey, sortkey2 : SortKey) : Int;
}
