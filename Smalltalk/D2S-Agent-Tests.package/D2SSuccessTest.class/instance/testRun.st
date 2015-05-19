tests
testRun
	| s ids1 ids2 |
	ids1 := #('8b7120f9acec44e29cfcdbc17b013341' '8b7120f9acec44e29cfcdbc17b013342').
	ids2 := #('8b7120f9-acec-44e2-9cfc-dbc17b013341' '8b7120f9-acec-44e2-9cfc-dbc17b013342').
	s := D2SSuccess new
		baseUrl: 'http://localhost:8080/d2s-agent-api-dev/account/test/orders';
		secret: 'Wzx-X4-PUQp';
		orderId: 42;
		ids: ids1;
		run.

	self assert: (s latestResponse) equals: 'Wrong order id'