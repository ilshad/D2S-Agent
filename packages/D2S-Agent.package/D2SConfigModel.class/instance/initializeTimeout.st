initialization
initializeTimeout

	timeoutModel text: config timeout asString.
	timeoutModel whenTextIsAccepted: [ :s | config timeout: (s asInteger) ].
