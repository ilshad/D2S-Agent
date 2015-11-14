Generic config for device. The fields are:

	- id
	- title
	- protocol
	- rootDirectory
	- url
	- isEnabled

Usage:

	config := D2SDeviceConfig new.

	config
		id: 'z42';
		protocol: #manual;
		rootDirectory: '/tmp/d2s-images/manual';
		url: 'http://example.com/api'.
