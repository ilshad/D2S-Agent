StartupPreferencesLoader default executeAtomicItems: {
	StartupAction name: 'Add dev repo' code: [ | dir |dir := FileSystem disk workingDirectory parent / 'packages'.MCRepositoryGroup default	addRepository: (MCFileTreeRepository new directory: dir).UIManager inform: 'Added filetree repo: ' , dir fullName ] runOnce: true.
}.

