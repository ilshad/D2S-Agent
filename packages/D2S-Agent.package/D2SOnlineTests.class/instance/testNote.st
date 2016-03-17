tests
testNote
	| device |
	device := D2SNote new
		url:         notesBaseUrl, '/account/dev/notes';
		secret:      secret;
		directory:   testDirectory, 'd2s-online-tests-notes'.

	[ device run ] fork.
