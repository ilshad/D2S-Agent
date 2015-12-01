private
startStopButtonModelToStart

	startStopButtonModel
		label: 'Start';
		action: [ D2SScheduler singleton start. self startStopButtonModelToStop ].
	
	statusModel label: 'Agent is not running'

