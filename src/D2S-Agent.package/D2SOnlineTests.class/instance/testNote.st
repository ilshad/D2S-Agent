tests
testNote
	| device |
	device := D2SNote new
		url:         notesClientUrl;
		secret:      secret;
		directory:   testDirectory, 'd2s-online-tests-notes'.

	[ device run ] fork.
