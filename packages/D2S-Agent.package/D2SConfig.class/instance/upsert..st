private
upsert: config
	"Upsert device config."
	| foundIndex |
	foundIndex := 0.
	foundIndex := self devices findFirst: [ :i | (i id) = (config at: 'id') ].
	(foundIndex = 0)
		ifTrue: [self devices add:
						(D2SDeviceConfig new
							id:       (config at: 'id');
							title:    (config at: 'title');
							protocol: (config at: 'protocol') asSymbol).
					D2SConfigUpdatedEvent new emit. ]
		ifFalse: [ 
			(((self devices at: foundIndex) title) = (config at: 'title')) ifFalse: [
				(self devices at: foundIndex) title: (config at: 'title').
				D2SConfigUpdatedEvent new emit. ] ]
