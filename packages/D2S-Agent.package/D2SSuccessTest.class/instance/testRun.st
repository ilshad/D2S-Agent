tests
testRun
	| s ids1 ids2 |
	ids1 := #('8b7120f9acec44e29cfcdbc17b013341' '8b7120f9acec44e29cfcdbc17b013342').
	ids2 := #('8b7120f9-acec-44e2-9cfc-dbc17b013341' '8b7120f9-acec-44e2-9cfc-dbc17b013342').
	s := D2SSuccess new
		baseUrl: 'http://ec2-54-77-55-192.eu-west-1.compute.amazonaws.com/agent-api-v1.0/account/dev/orders';
		secret: 'Q1BX-GQwF-ul';
		orderId: 777;
		ids: ids1;
		run.

	self assert: (s latestResponse) equals: 'Resource not found'