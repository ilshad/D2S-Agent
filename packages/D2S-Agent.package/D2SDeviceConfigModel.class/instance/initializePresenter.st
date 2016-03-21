initialization
initializePresenter

	rootDirectoryModel whenValueChanged:   [ :x | config rootDirectory: x ].
	prefixModel        whenTextIsAccepted: [ :x | config prefix: x ].
	isEnabledModel     whenChangedDo:      [ :x | config isEnabled: x ].
