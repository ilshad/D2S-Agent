as yet unclassified
testParseFileNameFromURL
	self
		assert: (D2SOrderImages new parseFileNameFromURL: 'http://foo.bar/baz')
		equals: 'baz'.
	