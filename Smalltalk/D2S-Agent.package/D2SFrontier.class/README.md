I implement Frontier Device API Protocol.

I need a preconfigured D2SSuccess object.

Usage:

	success := D2SSuccess new
		baseUrl: 'http://example.com/orders';
		secret: 'password'.

	D2SFrontier new
		url: 'http://example.com/device-id';
		secret: 'password';
		prefix: 'd2s';
		rootDirectory: '/tmp/d2s-images';
		success: success;
		run.
