menu
menuOpenMainPanelOn: aBuilder
	<worldMenu>
	(aBuilder item: #D2SMainPanel) 
		label: 'Digital 2 Solid';
		icon: (Smalltalk ui icons smallPrintIcon);
		order: 10;
		action: [self new openWithSpec]