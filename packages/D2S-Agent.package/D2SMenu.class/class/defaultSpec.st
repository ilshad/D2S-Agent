specs
defaultSpec
	<spec: #default>
	| rowHeight |
	rowHeight := self toolbarHeight.
	^ SpecLayout composed
		newColumn: [ :column |
			column
				add: #controlButton          height: rowHeight;
				add: #transcriptButton       height: rowHeight;
				add: #authButton             height: rowHeight;
				add: #baseConfigButton       height: rowHeight;
				add: #advancedConfigButton   height: rowHeight;
				"add: #helpButton             height: rowHeight;"
				add: #exitButton             height: rowHeight
		];
		yourself
