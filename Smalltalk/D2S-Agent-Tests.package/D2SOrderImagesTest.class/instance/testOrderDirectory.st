tests
testOrderDirectory
	| o |
	o := D2SOrderImages new
		rootDirectory: '/tmp/d2s-images';
		orderId: '42'.
		
	self assert: (o orderDirectory) asString equals: 'File @ /tmp/d2s-images/42'