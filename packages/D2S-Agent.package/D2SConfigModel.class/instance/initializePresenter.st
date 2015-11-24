initialization
initializePresenter
	config := D2SConfig singleton.

	timeoutModel text: config timeout asString.
	timeoutModel whenTextIsAccepted: [ :s | config timeout: (s asInteger) ].

	self initializeDevices.
	self initializeToolbar.