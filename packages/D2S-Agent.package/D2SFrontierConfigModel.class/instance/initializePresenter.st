initialization
initializePresenter
	super initializePresenter.
	backupDirectoryModel whenValueChanged: [ :s | config backupDirectory: s ]
