running
run
	"Success request to API service."
	('SUCCESS: ', self orderUrl, self idsAsJson) crLog.
	latestResponse := (ZnClient new
								url: self orderUrl;
								headerAt: 'X-D2S-Secret' put: secret;
								contents: self idsAsJson;
								post) asString.

