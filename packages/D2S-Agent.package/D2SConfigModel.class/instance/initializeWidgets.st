initialization
initializeWidgets

	config := D2SConfig singleton.

	timeoutModel := self instantiate: D2STextFieldModel.
	timeoutModel label: 'Timout'.

	noteModel := D2SNoteConfigModel newWithConfig: (config note).