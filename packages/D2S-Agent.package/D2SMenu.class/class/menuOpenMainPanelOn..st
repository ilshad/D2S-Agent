menu
menuOpenMainPanelOn: aBuilder
	<worldMenu>
	(aBuilder item: #D2SMenu) 
		label: 'Digital 2 Solid';
		icon: (Smalltalk ui icons smallPrintIcon);
		order: 10;
		action: [ D2SAssistant singleton openMenu ]
