private
deviceModelFromConfig: aConfig
	| protocols model |
	protocols := Dictionary newFrom: {
		#manual     ->   [ D2SDeviceConfigModel   newWithConfig: aConfig ].
		#frontier   ->   [ D2SFrontierConfigModel newWithConfig: aConfig ].
		#dry        ->   [ D2SFrontierConfigModel newWithConfig: aConfig ]
		}.

	model := (protocols at: (aConfig protocol)) value.
	model whenBuiltDo: [ :x | x model labelModel color: Color brown ].
	^ model
