tests
testIdsAsJson
	| s |
	s := D2SSuccess new.
	s ids: #('foo-1', 'foo-2').
	self assert: s idsAsJson equals: '["foo-1",",","foo-2"]'