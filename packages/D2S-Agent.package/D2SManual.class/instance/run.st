running
run
	self requestService.
	serviceResponse keysDo: [ :orderId |
		D2SLogger << (' Start order: ', orderId, ' (device: ', id, ')').
		self downloadOrder: orderId.
		self runSuccessForOrder: orderId.
		D2SLogger << ('Order downloaded: ', orderId, ' (device: ', id, ')') ]
