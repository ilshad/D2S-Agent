private
orderDirectory
	"Ensure that the order directory is exists and return it."
	| dir |
	dir := rootDirectory / (directoryBaseNameFromOrderId value: orderId).
	dir exists ifFalse: [ dir createDirectory ].
	^ dir
