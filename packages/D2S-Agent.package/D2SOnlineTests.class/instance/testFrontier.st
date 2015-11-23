tests
testFrontier
	| device |
	device := D2SFrontier new
		url:            apiBaseUrl;
		secret:         secret;
		prefix:         'd2s.online';
		rootDirectory:  testDirectory, '/d2s-online-tests-frontier';
		success:        success.
	
	[ device run ] fork.
