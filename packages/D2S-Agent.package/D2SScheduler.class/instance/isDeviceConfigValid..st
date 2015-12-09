private
isDeviceConfigValid: config
	config rootDirectory ifEmpty: [ 
		config isEnabled: false.
		UIManager default
			alert: (config label, ' is not configured yet. Set directory and then enable the device.')
			title: 'Warning'.
		^ false ].
	^ true
