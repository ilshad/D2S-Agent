initialization
initializePresenter
	config := D2SConfig singleton.

	timeoutModel text: config timeout asString.
	timeoutModel whenTextIsAccepted: [ :s | config timeout: (s asInteger) ].

	successBaseUrlModel text: config successBaseUrl.
	successBaseUrlModel whenTextIsAccepted: [ :s | config successBaseUrl: s ].

	self initializeDevices.
	self initializeToolbar.