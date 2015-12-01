private
runDevice: deviceConfig
	| config device |
	config := D2SConfig singleton.
	deviceConfig protocol = #manual   ifTrue: [ device := D2SManual   new ].
	deviceConfig protocol = #frontier ifTrue: [ device := D2SFrontier new ].
	device	 id:            deviceConfig id;
			 baseUrl:       (config baseUrl);
			 secret:        (config secret);
			 rootDirectory: (config rootDirectory);
			 run.
