settings
settingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #d2s)
		target: D2SConfig;
		targetSelector: #singleton;
		label: 'D2S Settings';
		description: 'Digital 2 Solid Agent Settings';
		with: [
			(aBuilder group: #d2sBase)
				label: 'Base Parameters';
				with: [
					(aBuilder setting: #accountId)
						label: 'Account ID';
						order: 1.
					(aBuilder setting: #secret)
						label: 'API Secret Key';
						order: 2.
					(aBuilder setting: #loadConfigUrl)
						label: 'Config URL';
						order: 3.
					(aBuilder launcher: #loadConfig)
						label: 'Load config';
						script: #loadConfig ] ]