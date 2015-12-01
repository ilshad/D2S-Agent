initialization
initializeWidgets

	authButton := self newButton
		label: ' Log in';
		icon: (Smalltalk ui icons glamorousOpenFromUrl);
		action: [ D2SAuthModel new openWithSpec ];
		yourself.

	baseConfigButton := self newButton
		label: ' Base Settings';
		icon: (Smalltalk ui icons config);
		action: [ D2SBaseConfigModel new openWithSpec ];
		yourself.

	advancedConfigButton := self newButton
		label: ' Advanced Settings';
		icon: (Smalltalk ui icons configuration);
		action: [ D2SAdvancedConfigModel new openWithSpec ];
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


