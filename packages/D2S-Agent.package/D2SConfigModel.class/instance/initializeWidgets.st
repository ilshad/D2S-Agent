initialization
initializeWidgets

	timeoutModel                 := self instantiate: D2STextFieldModel.
	timeoutModel label:          'Timout'.

	successBaseUrlModel          := self instantiate: D2STextFieldModel.
	successBaseUrlModel label:   'Success Base URL'
