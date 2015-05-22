initialization
initializeWidgets

	accountIdModel := self instantiate: D2STextFieldModel.
	secretModel 	:= self instantiate: D2STextFieldModel.
	configUrlModel := self instantiate: D2STextFieldModel.

	accountIdModel label: 'Account ID'.
	secretModel    label: 'API Secret Key'.
	configUrlModel label: 'Config URL'.
