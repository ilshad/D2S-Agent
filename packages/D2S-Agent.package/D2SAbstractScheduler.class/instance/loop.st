private
loop
	[ isRunning ] whileTrue: [
		[ self action. self isError: false ]
			on: NetworkError, NeoJSONParseError
			do: [ :ex |
				isError ifFalse: [
					D2SLogger << ('REQUEST FAILED: ', ex printString).
					self isError: true ] ].
		self wait ]
