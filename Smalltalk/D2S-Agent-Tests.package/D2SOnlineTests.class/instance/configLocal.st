config
configLocal
	apiBaseUrl        := 'http://localhost:8080/d2s-agent-api-dev'.
	clientId          := 'dev'.
	apiClientUrl      := apiBaseUrl, '/account/', clientId.
	secret            := 'Q1BX-GQwF-ul'.
	testDirectory     := '/Users/astoon/Tmp/d2s-online-local/'.
	success           := D2SSuccess new baseUrl: (apiClientUrl, '/orders'); secret: secret.
	manualPrinterId   := 'sqiMS'.
	frontierPrinterId := '3ux3T'.
	notesBaseUrl      := 'http://localhost:8080/d2s-note-dev'.
	notesClientUrl    := notesBaseUrl, '/account/', clientId, '/notes'.

