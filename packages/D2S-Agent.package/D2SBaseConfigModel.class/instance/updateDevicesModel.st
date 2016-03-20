as yet unclassified
updateDevicesModel
		devicesModel items: (D2SConfig singleton devices collect: [ :x | self deviceModelFromConfig: x ]).