initialization
initialize
	super initialize.

	D2SConfigUpdatedEvent announcer
		subscribe: D2SConfigUpdatedEvent
		do: [
			baseConfigModel window ifNotNil: [ :window |
				window close.
				self openBaseConfig.
				baseConfigModel window flush ].
			D2SLogger << 'Config has been updated.' ]
