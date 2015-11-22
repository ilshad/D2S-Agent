streaming
<< aString
	"Put string into the log"
	| s |
	s := self logMessagePrefix, aString.
	self appendToLogFile: s.
	Transcript show: s; cr.

