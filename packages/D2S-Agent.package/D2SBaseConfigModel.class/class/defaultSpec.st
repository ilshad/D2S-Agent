specs
defaultSpec
	<spec: #default>
	| rowHeight |
	rowHeight := self toolbarHeight.
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #noteModel      height: rowHeight * 3;
				add: #devicesModel;
				add: #toolbarModel   height: rowHeight
		];
		yourself