accessing
rootDirectory: aString
	"Define root directory for nested directories for orders.
	Create this directory if necessary."
	rootDirectory := (aString asFileReference).
	rootDirectory exists ifFalse: [ rootDirectory createDirectory ].