package cs.system.runtime.remoting;

@:nativeGen @:abstract @:libType @:csNative @:native("System.Runtime.Remoting.IChannelInfo") extern interface IChannelInfo {
	var ChannelData(get,set) : cs.NativeArray<Dynamic>;
	function get_ChannelData() : cs.NativeArray<Dynamic>;
	function set_ChannelData(value : cs.NativeArray<Dynamic>) : cs.NativeArray<Dynamic>;
}
