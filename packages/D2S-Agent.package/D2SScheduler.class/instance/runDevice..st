private
runDevice: deviceConfig
	| device |
	device := (self protocols at: (deviceConfig protocol)) value.
	device	 id:            deviceConfig id;
			 rootDirectory: deviceConfig rootDirectory;
			 baseUrl:       D2SConfig singleton baseUrl;
			 secret:        D2SConfig singleton secret;			 
			 run.
