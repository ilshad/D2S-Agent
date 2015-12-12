accessing
advancedConfigModel
	^ advancedConfigModel ifNil: [ advancedConfigModel := D2SAdvancedConfigModel new ]