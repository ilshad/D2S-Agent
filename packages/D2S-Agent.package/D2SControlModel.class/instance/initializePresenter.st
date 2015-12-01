initialization
initializePresenter

	D2SScheduler singleton isRunning
		ifFalse: [ self startStopButtonModelToStart ]
		ifTrue:  [ self startStopButtonModelToStop  ]
