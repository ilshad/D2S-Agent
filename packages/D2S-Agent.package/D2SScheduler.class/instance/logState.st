private
logState
	D2SLogger << (self isRunning
		ifTrue:  'Agent has been started.'
		ifFalse: 'Agent has been stopped.')

