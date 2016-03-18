initialization
initialize
	super initialize.

	D2SConfigUpdatedEvent announcer
		subscribe: D2SConfigUpdatedEvent
		do: [
			self baseConfigModel window ifNotNil: [ :window |
				window close.
				self openBaseConfig.
				window flush ].
			D2SLogger << 'Config has been updated.' ]
