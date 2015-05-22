initialization
initializeDevicesModel
	| index devices |

	index := 0.
	devices := config devices collect: [ :aDeviceConfig |
		index := index + 1.
		Association
			key: ('device-', (index asString)) asSymbol
			value: aDeviceConfig ].
	
	devicesModel := DynamicComposableModel new.

	devices do: [ :assoc |
		devicesModel
			assign: (D2SDeviceConfigModel newWithConfig: assoc value)
			to: assoc key ].

	devicesModel layout: (SpecLayout composed
		newColumn: [ :column |
			devices do: [ :assoc | column add: assoc key] ]).



