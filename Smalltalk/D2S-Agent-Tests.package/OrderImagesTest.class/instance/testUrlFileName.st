tests
testUrlFileName
	self assert: (D2SOrderImages fileName: 'http://example.com/1d2c0bce10-Mate-20x30.jpeg')
		  equals: '1d2c0bce10-Mate-20x30.jpeg'.