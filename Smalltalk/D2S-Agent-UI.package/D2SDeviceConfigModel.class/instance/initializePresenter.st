initialization
initializePresenter

	rootDirectoryModel whenTextIsAccepted: [ :s | config rootDirectory: s ].
	urlModel           whenTextIsAccepted: [ :s | config url: s ].
