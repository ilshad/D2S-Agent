api
initialExtent
	^ (700 min: (World extent x)) @ (devicesHeight ifNil: [ ^(500 min: (World extent y)) ])
