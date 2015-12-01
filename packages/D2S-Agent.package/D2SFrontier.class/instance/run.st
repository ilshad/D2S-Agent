running
run
	self requestService.
	(serviceResponse at: 'orders') associationsDo: [ :assoc |
		| orderId |
		orderId := assoc key.
		D2SLogger << (' Starting order: ', orderId, ' on device: ', id).
		self downloadOrder: orderId.
		self downloadInstruction: assoc value.
		self writeEnd.
		self runSuccessForOrder: orderId.
		D2SLogger << ('Order has been downloaded: ', orderId, ' on device: ', id) ]
