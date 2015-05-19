tests
testRun
	| success |
	success := D2SSuccess new
		baseUrl: 'http://localhost:8080/d2s-agent-api-dev/account/test/orders';
		secret: 'Wzx-X4-PUQp'.
	
	D2SManual new
		url: 'http://localhost:8080/d2s-agent-api-dev/account/test/manual/XDpM3';
		secret: 'Wzx-X4-PUQp';
		rootDirectory: '/tmp/d2s-images/manual';
		success: success;
		run.