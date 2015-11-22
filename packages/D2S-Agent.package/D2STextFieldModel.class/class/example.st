specs
example
	self new
		ghost: 'Empty yet';
		label: 'API Secret Key';
		whenTextIsAccepted: [ :aString | aString crLog ];
		openWithSpec.