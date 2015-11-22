specs
example
	self new
		ghost: 'Empty yet';
		label: 'My directory';
		whenValueChanged: [ :aString | aString crLog ];
		openWithSpec.