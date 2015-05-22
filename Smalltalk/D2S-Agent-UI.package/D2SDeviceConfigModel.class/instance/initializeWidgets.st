initialization
initializeWidgets
	
	labelModel         := self newLabel.
	rootDirectoryModel := self instantiate: D2STextFieldModel.
	urlModel           := self instantiate: D2STextFieldModel.
	
	labelModel         label: ''.
	rootDirectoryModel label: 'Directory'.
	urlModel           label: 'URL'.