creation
singleton 
	^ singleton ifNil: [ singleton := self new ]
