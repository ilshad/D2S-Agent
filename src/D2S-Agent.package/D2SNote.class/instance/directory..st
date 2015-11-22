config
directory: aString
	"Define notes download directory."
	directory := aString asFileReference.
	directory exists ifFalse: [ directory ensureCreateDirectory ].
