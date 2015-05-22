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
			assign: (D2SDeviceConfigModel newWithConfig: i value)
			to: i key ].

	height := ComposableModel toolbarHeight * 3.

	devicesModel layout: (SpecLayout composed
		newColumn: [ :col |
			devices do: [ :i |
				col add: i key height: height]
		];
		yourself).


