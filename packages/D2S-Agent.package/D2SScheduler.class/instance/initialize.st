initialization
initialize
	super initialize.
	D2SStateEvent announcer subscribe: D2SStateEvent do: [ :event | self logState ]
