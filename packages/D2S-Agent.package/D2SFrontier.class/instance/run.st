running
run
	self requestService.
	(serviceResponse at: 'orders') associationsDo: [ :assoc |
		| orderId |
		orderId := assoc key.
		D2SLogger << (' Start order: ', orderId, ' (device: ', id, ')').
		self downloadOrder: orderId.
		self downloadInstruction: assoc value.
		self writeEnd.
		self runSuccessForOrder: orderId.
		D2SLogger << ('Order downloaded: ', orderId, ' (device: ', id, ')') ]
