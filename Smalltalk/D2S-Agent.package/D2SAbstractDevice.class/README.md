This abstract class contains the most common things to implement device-specific protocols.

Basically, device classes need:

	1. Preconfigured D2SSuccess.
	2. Set up common properties such as url, secret, rootDirectory.

Abstract example:

 	success := D2SSuccess new
		baseUrl: 'http://example.com/orders';
		secret: 'password'.

	D2SSomeDevice new
		url: 'http://example.com/device-id';
		secret: 'password';
		rootDirectory: '/tmp/d2s-images';
		success: success;
		run.
