initialization
initializePresenter
	config := D2SConfig singleton.

	secretModel  text: config secret.
	baseUrlModel text: config baseUrl.

	secretModel  whenTextIsAccepted: [ :s | config secret: s ].
	baseUrlModel whenTextIsAccepted: [ :s | config baseUrl: s ].

	self initializeToolbar.