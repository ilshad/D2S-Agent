initialization
initializeWidgets

	identityButton := self newButton
		label: 'Identity';
		icon: (Smalltalk ui icons configIcon);
		action: [ D2SIdentityModel new openWithSpec ];
		yourself.

	configButton := self newButton
		label: 'Config';
		icon: (Smalltalk ui icons smallAuthoringToolsIcon);
		action: [ D2SConfigModel new openWithSpec ];
		yourself.
	
	exitButton := self newButton
		label: 'Exit';
		icon: (Smalltalk ui icons smallQuitIcon);
		action: [ UIManager default alert: 'This function is not implemented yet.' title: 'Sorry.' ]