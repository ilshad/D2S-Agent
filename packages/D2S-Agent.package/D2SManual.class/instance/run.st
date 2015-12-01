running
run
	self requestService.
	serviceResponse keysDo: [ :orderId |
		D2SLogger << (' Starting order: ', orderId, ' on device: ', id).
		self downloadOrder: orderId.
		self runSuccessForOrder: orderId.
		D2SLogger << ('Order has been downloaded: ', orderId, ' on device: ', id) ]
