running
run
	"Success request to API service."
	| contents |
	contents := self requestBody.
	latestResponse := (ZnClient new
								url: self url;
								contents: contents;
								post) asString.
	D2SLogger << ('Sent confirmation success for order: ', orderId asString, ' with units:').
	ids do: [ :id | D2SLogger << ('...', orderId asString, '/', id) ].
	D2SLogger << ('...', orderId asString, '/end').

