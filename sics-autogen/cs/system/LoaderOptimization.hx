package cs.system;

@:nativeGen @:native("System.LoaderOptimization") @:csNative extern enum LoaderOptimization {
	NotSpecified;
	SingleDomain;
	MultiDomain;
	MultiDomainHost;
	DomainMask;
	DisallowBindings;
}
