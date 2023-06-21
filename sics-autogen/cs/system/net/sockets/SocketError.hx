package cs.system.net.sockets;

@:nativeGen @:native("System.Net.Sockets.SocketError") @:csNative extern enum SocketError {
	SocketError;
	Success;
	OperationAborted;
	IOPending;
	Interrupted;
	AccessDenied;
	Fault;
	InvalidArgument;
	TooManyOpenSockets;
	WouldBlock;
	InProgress;
	AlreadyInProgress;
	NotSocket;
	DestinationAddressRequired;
	MessageSize;
	ProtocolType;
	ProtocolOption;
	ProtocolNotSupported;
	SocketNotSupported;
	OperationNotSupported;
	ProtocolFamilyNotSupported;
	AddressFamilyNotSupported;
	AddressAlreadyInUse;
	AddressNotAvailable;
	NetworkDown;
	NetworkUnreachable;
	NetworkReset;
	ConnectionAborted;
	ConnectionReset;
	NoBufferSpaceAvailable;
	IsConnected;
	NotConnected;
	Shutdown;
	TimedOut;
	ConnectionRefused;
	HostDown;
	HostUnreachable;
	ProcessLimit;
	SystemNotReady;
	VersionNotSupported;
	NotInitialized;
	Disconnecting;
	TypeNotFound;
	HostNotFound;
	TryAgain;
	NoRecovery;
	NoData;
}