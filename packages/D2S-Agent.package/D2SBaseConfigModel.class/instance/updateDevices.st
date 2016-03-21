private
updateDevices
	devicesModel items: (D2SConfig singleton devices collect: [ :x | self deviceModelFromConfig: x ]).
