tests
testSuccess1
	| s ids1 ids2 ids3 |
	ids1 := #('8e5d5ed5d71e4fb693cce13409e6906b').
	ids2 := #('8e5d5ed5-d71e-4fb6-93cc-e13409e6906b').
	ids3 := #('8e5d5ed5-d71e-4fb6-93cce13-409e6906b').
	s := D2SSuccess new
		baseUrl: 'http://localhost:8080/d2s-agent-api-dev/account/test/orders';
		secret: 'Wzx-X4-PUQp';
		orderId: 1;
		ids: ids2;
		success.

	self assert: (s latestResponse) equals: 'Units has been marked as transmitted'