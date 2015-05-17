private
unitId: aString
	| xs |
	xs := (self fileName: aString) splitOn: '-'.
	xs size > 5
		ifTrue: [^ (xs at: 1), '-', (xs at: 2), '-', (xs at: 3), '-', (xs at: 4), '-', (xs at: 5)]
		ifFalse: [ ^ xs at: 1 ]
