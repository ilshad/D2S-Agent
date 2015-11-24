Generic config for device. The API-related fields are:

	- id
	- rootDirectory

The additiona fields (used for agent's work) are:

	- title
	- protocol
	- isEnabled

Usage:

	config := D2SDeviceConfig new.

	config
		id: 'z42';
		rootDirectory: '/tmp/d2s-images/manual';
		protocol: #manual.
