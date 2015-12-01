initialization
initializeToolbar

	toolbarModel := DynamicComposableModel new
		instantiateModels: #(#closeButton ButtonModel);
		layout: (SpecLayout composed
			newRow: [ :row | row add: #closeButton ]);
		yourself.

	toolbarModel closeButton
		label: ' Close';
		icon: (Smalltalk ui icons smallOkIcon);
		action: [ self window close ]