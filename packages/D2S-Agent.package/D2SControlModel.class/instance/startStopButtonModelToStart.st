private
startStopButtonModelToStart

	startStopButtonModel
		label: 'Start';
		icon: (Smalltalk ui icons smallDoIt);
		action: [ D2SScheduler singleton start ifTrue: [ self startStopButtonModelToStop ] ].
	
	statusModel label: 'Agent is not running.'

