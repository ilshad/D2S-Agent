private
deviceModelFromConfig: aConfig
	| model |
	model :=	D2SDeviceConfigModel newWithConfig: aConfig.
	model whenBuiltDo: [ :x | x model labelModel color: Color brown ].
	^ model
