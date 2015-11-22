initialization
initializePresenter

	rootDirectoryModel whenValueChanged:   [ :s | config rootDirectory: s ].
	urlModel           whenTextIsAccepted: [ :s | config url: s ].
	isEnabledModel     whenChangedDo:      [ :b | config isEnabled: b ].
