specs
defaultSpec
	<spec: #default>
	| rowHeight |
	rowHeight := self toolbarHeight.
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #labelModel     height: rowHeight;
				add: #isEnabledModel height: rowHeight;
				add: #directoryModel height: rowHeight
		];
		yourself