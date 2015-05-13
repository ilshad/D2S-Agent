utils
unitId: aString
	^ ((self fileName: aString) splitOn: '-') first.