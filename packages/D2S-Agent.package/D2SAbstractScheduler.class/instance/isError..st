accessing
isError: aBool

	aBool
		ifTrue:  [ isError ifFalse: [ D2SLogger << 'Agent is running but network errors occur.' ] ]
		ifFalse: [ isError ifTrue:  [ D2SLogger << 'Agent is running without errors now.'       ] ].

	isError := aBool
