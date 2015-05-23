initialization
initializeToolbar
	toolbarModel := DynamicComposableModel new
		instantiateModels: #(#updateModel ButtonModel #closeModel ButtonModel);
		layout: (SpecLayout composed
			newRow: [ :row | row add: #updateModel; add: #closeModel ]);
		yourself.

	toolbarModel updateModel
		label: 'Update';
		action: [ UIManager default alert: 'This function is not implemented yet.' title: 'Sorry.' ].

	toolbarModel closeModel
		label: 'Close';
		action: [ self window close ]