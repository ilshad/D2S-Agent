initialization
initializePresenter
	config := D2SConfig singleton.

	accountIdModel text: config accountId.
	secretModel    text: config secret.
	configUrlModel text: config loadConfigUrl.

	accountIdModel whenTextIsAccepted: [ :s | config accountId: s ].
	secretModel    whenTextIsAccepted: [ :s | config secret: s ].
	configUrlModel whenTextIsAccepted: [ :s | config loadConfigUrl: s ].

	self initializeToolbar.