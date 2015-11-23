I implement Success Protocol.

I do request to the service which marks given units as transmitted successfully, so they shouln't to be served anymore.

Usage:

	D2SSuccess new
		baseUrl: 'http://example.com/;
		secret: 'api-key';
		orderId: 42;
		ids: #('8b7120f9-acec-44e2-9cfc-dbc17b013341');
		run.
