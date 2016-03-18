private
runNote
	| config |
	config := D2SConfig singleton.
	config note isEnabled ifTrue: [
		D2SNote new
			url:         config note url;
			directory:   config note directory;
			secret:      config secret;
			run.
		]	

