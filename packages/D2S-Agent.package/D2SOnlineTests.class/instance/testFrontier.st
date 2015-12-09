tests
testFrontier
	| device |
	device := D2SFrontier new
		id:              frontierPrinterId;
		baseUrl:         apiBaseUrl;
		secret:          secret;
		prefix:          'd2s.online';
		rootDirectory:   testDirectory, '/d2s-online-tests-frontier';
		backupDirectory: testDirectory, 'd2s-online-tests-frontier-backup'.

	[ device run ] fork.
