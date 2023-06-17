package cs.system;

@:nativeGen @:native("System.UriComponents") @:csNative extern enum UriComponents {
	SerializationInfoString;
	Scheme;
	UserInfo;
	Host;
	Port;
	SchemeAndServer;
	Path;
	Query;
	PathAndQuery;
	HttpRequestUrl;
	Fragment;
	AbsoluteUri;
	StrongPort;
	HostAndPort;
	StrongAuthority;
	NormalizedHost;
	KeepDelimiter;
}
