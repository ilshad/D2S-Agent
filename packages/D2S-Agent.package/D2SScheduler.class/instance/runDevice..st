private
runDevice: deviceConfig
	| config device |
	config := D2SConfig singleton.
	device := (self protocols at: (deviceConfig protocol)) value.
	device	 id:            deviceConfig id;
			 rootDirectory: deviceConfig rootDirectory;
			 prefix:        deviceConfig prefix;
			 baseUrl:       config baseUrl;
			 secret:        config secret.	 
	(deviceConfig protocol) = #frontier ifTrue: [ device backupDirectory: deviceConfig backupDirectory ].
	device run

