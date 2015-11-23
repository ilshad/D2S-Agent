specs
defaultSpec
	<spec: #default>
	| rowHeight |
	rowHeight := self toolbarHeight.
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #timeoutModel height: rowHeight;
				add: #successBaseUrlModel height: rowHeight;
				add: #devicesModel;
				add: #toolbarModel height: rowHeight
		];
		yourself