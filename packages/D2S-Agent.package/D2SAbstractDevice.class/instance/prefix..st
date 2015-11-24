configuration
prefix: aString
	"Define optional prefix for order directories.
	If it is set, order directory will be named as '[prefix]-[orderId]'."
	prefix :=  aString.
	orderImages directoryBaseNameFromOrderId:
		(prefix isEmpty
			ifTrue:  [[ :orderId | orderId ]]
			ifFalse: [[ :orderId | prefix, '-', orderId ]]).