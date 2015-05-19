initialization
initialize
	super initialize.
	orderImages := D2SOrderImages new createDirectoryName: [ :id | id asString ].
