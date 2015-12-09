initialization
initializeWidgets

	authButton := self newButton
		label: ' Authentication';
		icon: (Smalltalk ui icons glamorousOpenFromUrl);
		action: [ D2SAuthModel new openWithSpec ];
		yourself.

	controlButton := self newButton
		label: ' Start / Stop';
		icon: (Smalltalk ui icons smallDoIt);
		action: [ D2SControlModel new openWithSpec ];
		yourself.

	transcriptButton := self newButton
		label: ' Logs';
		icon: (Smalltalk ui icons transcript);
		action: [ Transcript openLabel: 'Logs' ];
		yourself.

	baseConfigButton := self newButton
		label: ' Configure Devices';
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


