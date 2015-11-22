tests
testManual
	| device |
	device := D2SManual new
		url:            (apiClientUrl, '/manual/', manualPrinterId);
		secret:         secret;
		prefix:         'd2s.online';
		rootDirectory:  testDirectory, '/d2s-online-tests-manual';
		success:        success.
	
	[ device run ] fork.
