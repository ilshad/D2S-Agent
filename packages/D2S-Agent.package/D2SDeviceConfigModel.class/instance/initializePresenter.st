initialization
initializePresenter

	rootDirectoryModel whenValueChanged:   [ :s | config rootDirectory: s ].
	isEnabledModel     whenChangedDo:      [ :b | config isEnabled: b ].
