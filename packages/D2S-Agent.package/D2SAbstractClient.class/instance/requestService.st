private
requestService
	"Request API service and save response."
	| response |
	response := ZnClient new get: (self url, '?secret=', secret).
	serviceResponse := NeoJSONReader fromString: response.