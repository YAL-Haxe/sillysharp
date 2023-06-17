package cs.system.security.accesscontrol;

@:nativeGen @:native("System.Security.AccessControl.FileSystemRights") @:csNative extern enum FileSystemRights {
	ListDirectory;
	ReadData;
	CreateFiles;
	WriteData;
	AppendData;
	CreateDirectories;
	ReadExtendedAttributes;
	WriteExtendedAttributes;
	ExecuteFile;
	Traverse;
	DeleteSubdirectoriesAndFiles;
	ReadAttributes;
	WriteAttributes;
	Write;
	Delete;
	ReadPermissions;
	Read;
	ReadAndExecute;
	Modify;
	ChangePermissions;
	TakeOwnership;
	Synchronize;
	FullControl;
}
