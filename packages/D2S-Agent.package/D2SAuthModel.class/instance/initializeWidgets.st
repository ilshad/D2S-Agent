initialization
initializeWidgets

	secretModel  := self instantiate: D2STextFieldModel.
	baseUrlModel := self instantiate: D2STextFieldModel.

	secretModel  label: 'API Key'.
	baseUrlModel label: 'Service URL'.
