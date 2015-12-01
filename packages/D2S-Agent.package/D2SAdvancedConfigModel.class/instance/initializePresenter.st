initialization
initializePresenter
	config := D2SConfig singleton.

	baseUrlModel text: config baseUrl.
	baseUrlModel whenTextIsAccepted: [ :s | config baseUrl: s ].

	timeoutModel text: config timeout asString.
	timeoutModel whenTextIsAccepted: [ :s | config timeout: (s asInteger) ].
