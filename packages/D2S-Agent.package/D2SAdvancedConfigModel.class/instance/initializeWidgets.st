initialization
initializeWidgets

	baseUrlModel := self instantiate: D2STextFieldModel.
	baseUrlModel label: 'Service URL'.

	timeoutModel := self instantiate: D2STextFieldModel.
	timeoutModel label: 'Timout (sec)'.