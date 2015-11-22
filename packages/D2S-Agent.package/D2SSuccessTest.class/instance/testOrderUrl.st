tests
testOrderUrl
	| s |
	s := D2SSuccess new.
	s baseUrl: 'http://example.com/orders'.
	s orderId: 42.
	self assert: s orderUrl equals: 'http://example.com/orders/42/success'