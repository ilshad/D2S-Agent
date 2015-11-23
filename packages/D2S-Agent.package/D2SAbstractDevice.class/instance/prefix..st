configuration
prefix: aString
	"Define optional prefix for order directoies.
	If it is set, order directory will be named as '[prefix]-[orderId]'."
	prefix :=  aString.
	orderImages directoryBaseNameFromOrderId:
		(prefix isEmpty
			ifTrue:  [[ :id | id ]]
			ifFalse: [[ :id | prefix, '-', id ]]).