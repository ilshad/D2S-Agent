scheduling
action
	| devices |
	D2SConfig singleton load.
	self runNote.
	devices := D2SConfig singleton devices select: [ :x | x isEnabled ].
	devices do: [ :x | (self isDeviceConfigValid: x) ifTrue: [self runDevice: x] ].
