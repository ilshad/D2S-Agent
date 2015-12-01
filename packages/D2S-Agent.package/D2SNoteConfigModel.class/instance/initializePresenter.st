initialization
initializePresenter

	directoryModel whenValueChanged: [ :s | config directory: s ].
	isEnabledModel whenChangedDo:    [ :b | config isEnabled: b ].
