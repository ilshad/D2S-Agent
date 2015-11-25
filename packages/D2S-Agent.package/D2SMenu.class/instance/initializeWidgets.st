initialization
initializeWidgets

	authButton := self newButton
		label: ' Authenticate';
		icon: (Smalltalk ui icons glamorousOpenFromUrl);
		action: [ D2SAuthModel new openWithSpec ];
		yourself.

	configButton := self newButton
		label: ' Configure';
		icon: (Smalltalk ui icons configuration);
		action: [ D2SConfigModel new openWithSpec ];
		yourself.
	
	helpButton := self newButton
		label: ' Help';
		icon: (Smalltalk ui icons helpIcon);
		action: [ UIManager default alert: 'Not implemented yet.' title: 'Sorry.' ];
		yourself.
	
	exitButton := self newButton
		label: ' Exit';
		icon: (Smalltalk ui icons smallQuitIcon);
		action: [ SmalltalkImage current snapshot: true andQuit: true ]


