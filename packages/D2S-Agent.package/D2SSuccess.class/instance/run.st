running
run
	"Success request to API service."
	| contents |
	contents := self requestBody.
	D2SLogger << ('SUCCESS: ', contents).
	latestResponse := (ZnClient new
								url: self url;
								contents: contents;
								post) asString.

