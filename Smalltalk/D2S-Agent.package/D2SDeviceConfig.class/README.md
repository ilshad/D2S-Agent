Generic config for device. The fields are:

	- protocol
	- rootDirectory
	- url
	- isEnabled

Usage:

	config := D2SDeviceConfig newWithProtocol: #manual.

	config
		rootDirectory: '/tmp/d2s-images/manual';
		url: 'http://example.com/api'.
