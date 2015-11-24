running
run
	"Success request to API service."
	| contents |
	contents := self requestBody.
	latestResponse := (ZnClient new
								url: self url;
								contents: contents;
								post) asString.
	D2SLogger << ('Sent confirmation success for order: ', orderId asString, ' (units: ', ids asCommaString, ')').

