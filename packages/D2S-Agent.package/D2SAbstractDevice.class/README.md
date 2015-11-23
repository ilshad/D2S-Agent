This abstract class contains the most common things to implement device-specific protocols.

Abstract example:

	D2SSomeDevice new
		id: 'device-id';
		baseUrl: 'http://example.com/';
		secret: 'api-key';
		rootDirectory: '/tmp/d2s-images';
		prefix: 'd2s';
		run.
