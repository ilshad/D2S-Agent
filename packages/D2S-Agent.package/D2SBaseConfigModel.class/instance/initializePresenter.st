initialization
initializePresenter

	self initializeDevices.

	D2SConfigUpdatedEvent announcer
		subscribe: D2SConfigUpdatedEvent
		do: [ D2SLogger << 'Config has been updated!' ]
