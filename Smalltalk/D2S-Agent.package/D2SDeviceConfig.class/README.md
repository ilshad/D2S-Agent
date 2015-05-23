Generic config for device. The fields are:

	- id
	- title
	- protocol
	- rootDirectory
	- url
	- isEnabled

Usage:

	config := D2SDeviceConfig newWithId: 'z42' protocol: #manual.

	config
		rootDirectory: '/tmp/d2s-images/manual';
		url: 'http://example.com/api'.
