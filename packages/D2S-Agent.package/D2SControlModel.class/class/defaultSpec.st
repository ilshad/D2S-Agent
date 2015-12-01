specs
defaultSpec
	<spec: #default>
	| rowHeight |
	rowHeight := self toolbarHeight.
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #statusModel;
				add: #startStopButtonModel height: rowHeight
		];
		yourself