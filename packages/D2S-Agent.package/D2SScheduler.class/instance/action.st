scheduling
action
	| devices |
	self runNote.
	devices := D2SConfig singleton devices select: [ :x | x isEnabled ].
	devices do: [ :x | self runDevice: x ].