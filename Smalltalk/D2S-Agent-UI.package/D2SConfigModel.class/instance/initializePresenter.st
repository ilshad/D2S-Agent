initialization
initializePresenter
	config := D2SConfig singleton.

	successBaseUrlModel text: config successBaseUrl.
	successBaseUrlModel whenTextIsAccepted: [ :s | config successBaseUrl: s ].

	self initializeDevices.
	self initializeToolbar.