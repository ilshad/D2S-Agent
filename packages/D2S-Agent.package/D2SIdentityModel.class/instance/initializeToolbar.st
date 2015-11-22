initialization
initializeToolbar
	toolbarModel := DynamicComposableModel new
		instantiateModels: #(#updateButton ButtonModel #closeButton ButtonModel);
		layout: (SpecLayout composed
			newRow: [ :row | row add: #updateButton; add: #closeButton ]);
		yourself.

	toolbarModel updateButton
		label: ' Update config';
		icon: (Smalltalk ui icons smallUpdateIcon);
		action: [ UIManager default alert: 'This function is not implemented yet.' title: 'Sorry.' ].

	toolbarModel closeButton
		label: ' Close';
		icon: (Smalltalk ui icons smallOkIcon);
		action: [ self window close ]