initialization
initializeToolbar
	toolbarModel := DynamicComposableModel new
		instantiateModels: #(#quit ButtonModel);
		layout: (SpecLayout composed
			newRow: [ :row | row add: #quit ]);
		yourself.
	
	toolbarModel quit label: 'Quit'.
