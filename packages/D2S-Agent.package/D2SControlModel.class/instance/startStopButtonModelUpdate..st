private
startStopButtonModelUpdate: isRunning

	isRunning
		ifFalse: [ self startStopButtonModelToStart ]
		ifTrue:  [ self startStopButtonModelToStop  ]


