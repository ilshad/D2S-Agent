accessing
authModel
	^ authModel ifNil: [ authModel := D2SAuthModel new ]