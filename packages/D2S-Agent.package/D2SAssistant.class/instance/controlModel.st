accessing
controlModel
	^ controlModel ifNil: [ controlModel := D2SControlModel new ]