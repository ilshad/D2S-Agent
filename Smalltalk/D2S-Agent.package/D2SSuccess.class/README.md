I implement Success Protocol.

I do the request to the service which marks given units as transmitted successfully, so they are don't need to be served anymore.

Usage:

	D2SSuccess new
		baseUrl: 'http://example.com/orders;
		secret: 'password';
		orderId: 42;
		ids: #('8b7120f9-acec-44e2-9cfc-dbc17b013341');
		success.
