I implement Manual Device API Protocol.

I need a preconfigured D2SSuccess object.

Usage:

	success := D2SSuccess new
		baseUrl: 'http://example.com/orders';
		secret: 'password'.

	D2SManual new
		url: 'http://example.com/device-id';
		secret: 'password';
		rootDirectory: '/tmp/d2s-images';
		success: success;
		run.
