initialization
initializeWidgets
	
	labelModel         := self newLabel.
	rootDirectoryModel := self instantiate: D2SDirectoryFieldModel.
	prefixModel        := self instantiate: D2STextFieldModel.
	isEnabledModel     := self newCheckBox.
	
	rootDirectoryModel label: 'Directory'.
	prefixModel        label: 'Prefix'.
	isEnabledModel     label: 'Enabled'.
