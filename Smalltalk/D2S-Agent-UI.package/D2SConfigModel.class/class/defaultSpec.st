specs
defaultSpec
	<spec: #default>
	| rowHeight |
	rowHeight := self toolbarHeight.
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #accountIdModel height: rowHeight;
				add: #secretModel    height: rowHeight;
				add: #configUrlModel height: rowHeight;
				add: #devicesModel;
				add: #toolbarModel   height: rowHeight
		];
		yourself