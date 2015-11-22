config
configRemote
	apiBaseUrl        := 'http://ec2-54-77-55-192.eu-west-1.compute.amazonaws.com/agent-api'.
	clientId          := 'dev'.
	apiClientUrl      := apiBaseUrl, '/account/', clientId.
	secret            := 'Q1BX-GQwF-ul'.
	testDirectory     := '/Users/astoon/Tmp/d2s-online/'.
	success           := D2SSuccess new baseUrl: (apiClientUrl, '/orders'); secret: secret.
	manualPrinterId   := 'I4LoR'.
	frontierPrinterId := '3ux3T'.
	notesBaseUrl      := 'http://ec2-54-77-55-192.eu-west-1.compute.amazonaws.com/note'.
	notesClientUrl    := notesBaseUrl, '/account/', clientId, '/notes'.

