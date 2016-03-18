initialization
initializeWidgets

	authButton := self newButton
		label: ' Authenticate';
		icon: (Smalltalk ui icons glamorousOpenFromUrl);
		action: [ D2SAssistant singleton openAuth ];
		yourself.

	controlButton := self newButton
		label: ' Start / Stop';
		icon: (Smalltalk ui icons smallDoIt);
		action: [ D2SAssistant singleton openControl ];
		yourself.

	transcriptButton := self newButton
		label: ' Logs';
		icon: (Smalltalk ui icons transcript);
		action: [ D2SAssistant singleton openTranscript ];
		yourself.

	baseConfigButton := self newButton
		label: ' Devices';
		icon: (Smalltalk ui icons config);
		action: [ D2SAssistant singleton openBaseConfig ];
		yourself.

	advancedConfigButton := self newButton
		label: ' Advanced';
		icon: (Smalltalk ui icons configuration);
		action: [ D2SAssistant singleton openAdvancedConfig ];
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


