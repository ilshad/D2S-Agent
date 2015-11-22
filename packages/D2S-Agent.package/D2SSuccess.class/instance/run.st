running
run
	"Success request to API service."
	D2SLogger << ('SUCCESS: ', self orderUrl, self idsAsJson).
	latestResponse := (ZnClient new
								url: self orderUrl;
								headerAt: 'X-D2S-Secret' put: secret;
								contents: self idsAsJson;
								post) asString.

