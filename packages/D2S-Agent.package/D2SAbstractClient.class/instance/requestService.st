private
requestService
	"Request API service and save response."
	| url response |
	url := self url, '?secret=', secret.
	response := ZnClient new get: url.
	serviceResponse := NeoJSONReader fromString: response.