accessing
note
	^ note ifNil: [ note := D2SNoteConfig new ]
