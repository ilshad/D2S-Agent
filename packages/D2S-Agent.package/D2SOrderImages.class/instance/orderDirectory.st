private
orderDirectory
	"Ensure that the order directory is exists and return it."
	| dir |
	dir := rootDirectory / self directoryBaseName.
	dir exists ifFalse: [ dir createDirectory ].
	^ dir
