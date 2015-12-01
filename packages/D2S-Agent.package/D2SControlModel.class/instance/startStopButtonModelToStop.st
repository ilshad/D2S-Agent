private
startStopButtonModelToStop

	startStopButtonModel
		label: 'Stop';
		icon: (Smalltalk ui icons stop);
		action: [ D2SScheduler singleton stop. self startStopButtonModelToStart ].
	
	statusModel label: 'Agent is running...'
