private
startStopButtonModelToStop

	startStopButtonModel
		label: 'Stop';
		action: [ D2SScheduler singleton stop. self startStopButtonModelToStart ].
	
	statusModel label: 'Agent is running'
