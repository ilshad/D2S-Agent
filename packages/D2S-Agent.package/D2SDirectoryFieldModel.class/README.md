Filesystem directory input field with label.

Usage:

	D2SDirectoryFieldModel new
		ghost: 'Enter text';
		label: 'Save directory';
		whenTextIsAccepted: [ :x | x crLog ];
		openWithSpec.
