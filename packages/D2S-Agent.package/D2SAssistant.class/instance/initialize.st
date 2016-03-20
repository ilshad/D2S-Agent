initialization
initialize
	super initialize.
	D2SConfigUpdatedEvent announcer subscribe: D2SConfigUpdatedEvent do: [
		D2SLogger << 'Service config changes detected.'.
		(D2SBaseConfigModel allInstances select: [ :x | x window isDisplayed ])
			isEmpty ifFalse: [
				UIManager default alert: 'Lab devices just has been modied. Please, close Devices window and open it again. ' ] ]