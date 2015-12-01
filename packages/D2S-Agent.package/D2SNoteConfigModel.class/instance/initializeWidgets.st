initialization
initializeWidgets
	
	labelModel     := self newLabel.
	isEnabledModel := self newCheckBox.
	directoryModel := self instantiate: D2SDirectoryFieldModel.

	labelModel     label: 'Notes'.
	isEnabledModel label: 'Enabled'.
	directoryModel label: 'Directory'.

	labelModel     color: Color brown.
