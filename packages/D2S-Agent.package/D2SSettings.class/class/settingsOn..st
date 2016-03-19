settings
settingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #d2s)
		target: D2SConfig;
		targetSelector: #singleton;
		label: 'D2S';
		description: 'Digital 2 Solid Agent Settings';
		with: [
			(aBuilder setting: #secret)
				label: 'API Key';
				order: 1.
			(aBuilder setting: #baseUrl)
				label: 'Service URL';
				order: 2.
			(aBuilder launcher: #authenticate)
				label: 'Authenticate';
				script: #load ]
