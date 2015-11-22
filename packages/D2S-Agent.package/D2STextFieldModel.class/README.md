Text input field with label.

Usage:

	D2STextFieldModel new
		ghost: 'Enter text';
		label: 'The text';
		whenTextIsAccepted: [ :x | x crLog ];
		openWithSpec.
