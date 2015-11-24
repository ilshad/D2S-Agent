initialization
initializeToolbar
	toolbarModel := DynamicComposableModel new
		instantiateModels: #(#authenticateButton ButtonModel);
		layout: (SpecLayout composed
			newRow: [ :row | row add: #authenticateButton ]);
		yourself.

	toolbarModel authenticateButton
		label: ' Authenticate';
		icon: (Smalltalk ui icons smallOk);
		action: [ UIManager default alert: 'This function is not implemented yet.' title: 'Sorry.' ].
