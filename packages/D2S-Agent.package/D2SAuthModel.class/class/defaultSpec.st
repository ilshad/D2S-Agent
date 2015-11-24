specs
defaultSpec
	<spec: #default>
	| rowHeight |
	rowHeight := self toolbarHeight.
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #secretModel  height: rowHeight;
				add: #baseUrlModel height: rowHeight;
				add: #toolbarModel height: rowHeight
		];
		yourself