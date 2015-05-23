specs
defaultSpec
	<spec: #default>
	| rowHeight |
	rowHeight := self toolbarHeight.
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #identityButton height: rowHeight;
				add: #configButton   height: rowHeight;
				add: #exitButton     height: rowHeight
		];
		yourself