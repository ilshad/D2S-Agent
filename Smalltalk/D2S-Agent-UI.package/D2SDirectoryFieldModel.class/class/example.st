specs
example
	self new
		ghost: 'Empty yet';
		label: 'My directory';
		whenTextIsAccepted: [ :aString | aString crLog ];
		openWithSpec.