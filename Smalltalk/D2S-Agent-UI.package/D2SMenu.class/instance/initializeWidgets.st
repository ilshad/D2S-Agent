initialization
initializeWidgets

	identityButton := self newButton
		label: ' Identity';
		icon: (Smalltalk ui icons userIcon);
		action: [ D2SIdentityModel new openWithSpec ];
		yourself.

	configButton := self newButton
		label: ' Config';
		icon: (Smalltalk ui icons configIcon);
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
		action: [ SmalltalkImage current exitSuccess ]


