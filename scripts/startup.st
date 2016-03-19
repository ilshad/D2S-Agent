StartupPreferencesLoader default executeAtomicItems: {
	StartupAction name: 'Load NeoJSON' code: [ Gofer new	url: 'http://mc.stfx.eu/Neo';	package: 'Neo-JSON-Core';	load.UIManager default inform: 'NeoJSON just has been installed' ] runOnce: true.
	StartupAction name: 'Load D2S-Agent from local filtree repo' code: [ | path |path := (FileSystem disk workingDirectory parent / 'packages')	pathString.Gofer new	url: 'filetree://' , path;	package: 'D2S-Agent';	load.UIManager default	inform: 'D2S-Agent package installed from filetree://' , path ] runOnce: true.
}.

