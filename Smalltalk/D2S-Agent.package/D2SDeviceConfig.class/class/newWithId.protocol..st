instance creation
newWithId: aString protocol: aSymbol
	^ self new
		id: aString;
		protocol: aSymbol;
		yourself