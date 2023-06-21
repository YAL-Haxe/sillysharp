package cs.system.net.sockets;

@:nativeGen @:native("System.Net.Sockets.IOControlCode") @:csNative extern enum IOControlCode {
	UnicastInterface;
	AddressListChange;
	EnableCircularQueuing;
	Flush;
	DataToRead;
	OobDataRead;
	AddressListQuery;
	GetBroadcastAddress;
	QueryTargetPnpHandle;
	AsyncIO;
	NonBlockingIO;
	AssociateHandle;
	MulticastScope;
	MultipointLoopback;
	NamespaceChange;
	RoutingInterfaceChange;
	SetGroupQos;
	SetQos;
	AbsorbRouterAlert;
	AddMulticastGroupOnInterface;
	BindToInterface;
	DeleteMulticastGroupFromInterface;
	KeepAliveValues;
	LimitBroadcasts;
	MulticastInterface;
	ReceiveAll;
	ReceiveAllIgmpMulticast;
	ReceiveAllMulticast;
	AddressListSort;
	GetExtensionFunctionPointer;
	GetGroupQos;
	GetQos;
	RoutingInterfaceQuery;
	TranslateHandle;
}
