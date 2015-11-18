I implement Manual Device API Protocol.

I need a preconfigured D2SSuccess object.

Usage:

	D2SManual new
		url: 'http://example.com/device-id';
		secret: 'password';
		rootDirectory: '/tmp/d2s-images';
		success: success;
		run.
