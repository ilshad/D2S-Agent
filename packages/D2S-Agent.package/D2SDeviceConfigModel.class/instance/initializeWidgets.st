initialization
initializeWidgets
	
	labelModel         := self newLabel.
	rootDirectoryModel := self instantiate: D2SDirectoryFieldModel.
	isEnabledModel     := self newCheckBox.
	
	rootDirectoryModel label: 'Directory'.
	isEnabledModel     label: 'Enabled'.
