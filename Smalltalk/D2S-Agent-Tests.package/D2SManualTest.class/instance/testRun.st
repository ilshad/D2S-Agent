tests
testRun
	| success |
	success := D2SSuccess new
		baseUrl: 'http://localhost:8080/d2s-agent-api-dev/account/dev/orders';
		secret: 'Q1BX-GQwF-ul'.
	
	D2SManual new
		url: 'http://localhost:8080/d2s-agent-api-dev/account/dev/manual/sqiMS';
		secret: 'Q1BX-GQwF-ul';
		rootDirectory: '/tmp/d2s-images/manual';
		success: success;
		run.