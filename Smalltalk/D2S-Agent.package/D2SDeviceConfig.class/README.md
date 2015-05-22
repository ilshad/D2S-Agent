Generic config for device. The fields are:

	- protocol
	- rootDirectory
	- url

Usage:

	D2SDeviceConfig new
		protocol: #manual;
		rootDirectory: '/tmp/d2s-images/manual';
		url: 'http://example.com/api'.

Fields 'rootDirectory' and 'url' are not required and they are empty strings by default.

Shortcat for creation:

	D2SDeviceConfig newWithProtocol: #manual.


