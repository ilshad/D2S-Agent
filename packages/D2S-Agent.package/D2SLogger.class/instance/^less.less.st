streaming
<< aString
	"Put string into the log. If string starts with space, put empty line first."
	| s |
	(aString byteAt: 1) = 32	ifTrue: [ Transcript cr ].
	s := self logMessagePrefix, (aString trim).
	self appendToLogFile: s.
	Transcript show: s; cr.