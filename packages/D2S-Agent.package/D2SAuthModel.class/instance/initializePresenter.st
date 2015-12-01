initialization
initializePresenter
	config := D2SConfig singleton.

	secretModel  text: config secret.
	secretModel  whenTextIsAccepted: [ :s | config secret: s ].

	self initializeToolbar.