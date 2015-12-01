private
runDevice: deviceConfig
	| config device |
	config := D2SConfig singleton.
	device := (self protocols at: (deviceConfig protocol)) value.
	device	 id:            deviceConfig id;
			 rootDirectory: deviceConfig rootDirectory;
			 baseUrl:       config baseUrl;
			 secret:        config secret;			 
			 run.
