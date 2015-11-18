running
run
	self requestService.
	(serviceResponse at: 'orders') associationsDo: [ :assoc |
		| orderId |
		orderId := assoc key.
		self downloadOrder: orderId.
		self downloadInstruction: assoc value.
		self writeEnd.
		self runSuccessForOrder: orderId.
		self logEnd: orderId. ]
