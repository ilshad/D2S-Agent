tests
testUrlFileName
	| result |
	
	result := (D2SOrderImages new) fileName:
		'http://s3-eu-west-1.amazonaws.com/d2s-test/images/1d2c0bce10-Mate-20x30.jpeg'.

	self assert: result equals: '1d2c0bce10-Mate-20x30.jpeg'.