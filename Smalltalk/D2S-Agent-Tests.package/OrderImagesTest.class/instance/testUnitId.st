tests
testUnitId
	| result |
	
	result := (D2SOrderImages new) unitId: 'http://example.com/1d2c0bce10-Mate-20x30.jpeg'.

	self assert: result equals: '1d2c0bce10'.
	