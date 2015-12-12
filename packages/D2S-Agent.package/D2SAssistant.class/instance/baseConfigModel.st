accessing
baseConfigModel
	^ baseConfigModel ifNil: [ baseConfigModel := D2SBaseConfigModel new ]