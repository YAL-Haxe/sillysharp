package cs.system.net.sockets;

@:nativeGen @:native("System.Net.Sockets.ProtocolType") @:csNative extern enum ProtocolType {
	Unknown;
	IP;
	Unspecified;
	IPv6HopByHopOptions;
	Icmp;
	Igmp;
	Ggp;
	IPv4;
	Tcp;
	Pup;
	Udp;
	Idp;
	IPv6;
	IPv6RoutingHeader;
	IPv6FragmentHeader;
	IPSecEncapsulatingSecurityPayload;
	IPSecAuthenticationHeader;
	IcmpV6;
	IPv6NoNextHeader;
	IPv6DestinationOptions;
	ND;
	Raw;
	Ipx;
	Spx;
	SpxII;
}
