initialization
initializeDevices
	| index devices height |

	index := 0.
	devices := config devices collect: [ :aDeviceConfig |
		index := index + 1.
		Association
			key: ('device_', (index asString)) asSymbol
			value: aDeviceConfig ].

	devicesModel := DynamicComposableModel new.

	devices do: [ :i |
		devicesModel
			assign: (self deviceModelFromConfig: i value)
			to: i key ].

	height := ComposableModel toolbarHeight * 4.

	devicesModel layout: (SpecLayout composed
		newRow: [ :row |
			row newColumn: [ :col |
				devices do: [ :i |
					col add: i key height: height
				]
			]
		] height: devices size * height;				
		yourself).


