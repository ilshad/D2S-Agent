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
		action: [ 
			D2SConfig singleton load.
			UIManager default
				alert: 'Config just has been updated. Please configure devices now. '
				title: 'Successfull authentication'.
			self window close.
			D2SAssistant new openBaseConfig ]