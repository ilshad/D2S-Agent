private
runNote
	| config |
	config := D2SConfig singleton.
	D2SNote new
		url:         config note url;
		directory:   config note directory;
		secret:      config secret;
		run.

