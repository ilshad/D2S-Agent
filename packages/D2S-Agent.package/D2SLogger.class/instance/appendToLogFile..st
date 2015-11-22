private
appendToLogFile: aString
	"Append string into the end of log file."
	self logFile writeStreamDo: [ :stream |
		stream	
			setToEnd;
			nextPutAll: aString;
			nextPut: Character cr. ]
