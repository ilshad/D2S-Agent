specs
defaultSpec
	<spec: #default>
	| rowHeight |
	rowHeight := self toolbarHeight.
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #authButton     height: rowHeight;
				add: #configButton   height: rowHeight;
				add: #helpButton     height: rowHeight;
				add: #exitButton     height: rowHeight
		];
		yourself