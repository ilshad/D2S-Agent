initialization
initialize
	super initialize.
	
	ids := OrderedCollection new.
	fnDirectoryBaseName := [ :id | id ]
