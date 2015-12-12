accessing
menuModel
	^ menuModel ifNil: [ menuModel := D2SMenu new ]