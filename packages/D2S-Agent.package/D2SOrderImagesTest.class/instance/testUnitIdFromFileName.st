tests
testUnitIdFromFileName
	| orderImages |
	orderImages := D2SOrderImages new.
	self
		assert: (orderImages unitIdFromFileName: 'foo-Test-9x12-1.tiff')
	 	equals: 'foo'.
		
	self
		assert: (orderImages unitIdFromFileName: '8b7120f9-acec-44e2-9cfc-dbc17b013342-Test-9x12-1.tiff')
		equals: '8b7120f9-acec-44e2-9cfc-dbc17b013342'
	