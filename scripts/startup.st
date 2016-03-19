StartupPreferencesLoader default executeAtomicItems: {
	StartupAction name: 'Install D2S package' code: [ MCRepositoryGroup default	addRepository:		(MCFileTreeRepository new			directory: FileSystem disk workingDirectory parent / 'packages') ] runOnce: true.
}.

