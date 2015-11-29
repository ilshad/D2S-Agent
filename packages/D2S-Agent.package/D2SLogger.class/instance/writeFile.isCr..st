private
writeFile: aString isCr: aBool
	"Append string into the end of log file with cr or without cr."
	self logFile writeStreamDo: [ :stream |
		stream	 setToEnd; nextPutAll: aString.
		aBool ifTrue: [ stream nextPut: Character cr ] ]
