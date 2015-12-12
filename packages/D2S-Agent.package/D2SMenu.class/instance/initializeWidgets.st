initialization
initializeWidgets
	| assistant |
	
	assistant := D2SAssistant new.

	authButton := self newButton
		label: ' Authentication';
		icon: (Smalltalk ui icons glamorousOpenFromUrl);
		action: [ assistant openAuth ];
		yourself.

	controlButton := self newButton
		label: ' Start / Stop';
		icon: (Smalltalk ui icons smallDoIt);
		action: [ assistant openControl ];
		yourself.

	transcriptButton := self newButton
		label: ' Logs';
		icon: (Smalltalk ui icons transcript);
		action: [ assistant openTranscript ];
		yourself.

	baseConfigButton := self newButton
		label: ' Configure Devices';
		icon: (Smalltalk ui icons config);
		action: [ assistant openBaseConfig ];
		yourself.

	advancedConfigButton := self newButton
		label: ' Advanced Settings';
		icon: (Smalltalk ui icons configuration);
		action: [ assistant openAdvancedConfig ];
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


