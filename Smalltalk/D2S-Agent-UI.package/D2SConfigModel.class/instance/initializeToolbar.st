initialization
initializeToolbar
	toolbarModel := DynamicComposableModel new
		instantiateModels: #(#closeModel ButtonModel);
		layout: (SpecLayout composed
			newRow: [ :row | row add: #closeModel ]);
		yourself.

	toolbarModel closeModel
		label: 'Close';
		action: [ self window close ]