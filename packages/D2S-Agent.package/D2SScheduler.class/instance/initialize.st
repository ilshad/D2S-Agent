initialization
initialize
	super initialize.
	D2SStateEvent announcer
		subscribe: D2SStateEvent
		do: [ :event |
			D2SLogger << (event isRunning
				ifTrue: 'Agent has been started...'
				ifFalse: 'Agent has been stopped!') ]
