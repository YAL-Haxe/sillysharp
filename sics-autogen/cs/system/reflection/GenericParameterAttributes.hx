package cs.system.reflection;

@:nativeGen @:native("System.Reflection.GenericParameterAttributes") @:csNative extern enum GenericParameterAttributes {
	None;
	Covariant;
	Contravariant;
	VarianceMask;
	ReferenceTypeConstraint;
	NotNullableValueTypeConstraint;
	DefaultConstructorConstraint;
	SpecialConstraintMask;
}
