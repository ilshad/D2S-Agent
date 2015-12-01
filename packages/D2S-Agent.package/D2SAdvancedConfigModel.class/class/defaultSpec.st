specs
defaultSpec
	<spec: #default>
	| rowHeight |
	rowHeight := self toolbarHeight.
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #baseUrlModel height: rowHeight;
				add: #timeoutModel height: rowHeight;
				add: #toolbarModel height: rowHeight
		];
		yourself