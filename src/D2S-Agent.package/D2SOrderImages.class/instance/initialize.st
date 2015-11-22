initialization
initialize
	super initialize.	
	ids := OrderedCollection new.
	directoryBaseNameFromOrderId := [ :id | id ]
