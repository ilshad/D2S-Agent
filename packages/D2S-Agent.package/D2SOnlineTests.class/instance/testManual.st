tests
testManual
	| device |
	device := D2SManual new
		id:             manualPrinterId;
		baseUrl:        apiBaseUrl;
		secret:         secret;
		prefix:         'd2s.online';
		rootDirectory:  testDirectory, '/d2s-online-tests-manual'.
	
	[ device run ] fork.
