initialization
initializePresenter
	buttonModel action: [
		| file |
		file := (UIManager default chooseDirectory: 'Choose directory' from: FileSystem root).
		file ifNotNil: [
			| filename |
			filename := file fullName.
			textModel text: filename.
			onAction ifNotNil: [ onAction value: filename ]
		]
	]