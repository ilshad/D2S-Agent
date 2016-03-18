scheduling
start
	"Returns true if started successfully."
	| success |
	success := true.

	D2SConfig singleton baseUrl
		ifEmpty: [ 
			success := false.
			UIManager default alert: 'Please setup base URL.'.
			D2SAssistant singleton openAdvancedConfig ].

	success ifTrue: [
		D2SConfig singleton secret
			ifEmpty: [
				success := false.
				UIManager default alert: 'Please authenticate'.
				D2SAssistant singleton openAuth ]
			].

	success ifTrue: [ super start. self update ].

	^ success