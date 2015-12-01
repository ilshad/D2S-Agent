private
startStopButtonModelToStart

	startStopButtonModel
		label: 'Start';
		icon: (Smalltalk ui icons smallDoIt);
		action: [ D2SScheduler singleton start. self startStopButtonModelToStop ].
	
	statusModel label: 'Agent is not running.'

