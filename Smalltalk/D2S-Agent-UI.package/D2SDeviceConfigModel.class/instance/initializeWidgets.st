initialization
initializeWidgets
	
	labelModel         := self newLabel.
	rootDirectoryModel := self instantiate: D2SDirectoryFieldModel.
	urlModel           := self instantiate: D2STextFieldModel.
	isEnabledModel     := self newCheckBox.
	
	rootDirectoryModel label: 'Directory'.
	urlModel           label: 'URL'.
	isEnabledModel     label: 'Enabled'.
