initialization
initializePresenter

	D2SStateEvent announcer
		subscribe: D2SStateEvent
		do: [ :event | self startStopButtonModelUpdate: (event isRunning)].

	self startStopButtonModelUpdate: (D2SScheduler singleton isRunning)

