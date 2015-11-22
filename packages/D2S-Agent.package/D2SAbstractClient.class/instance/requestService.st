private
requestService
	"Request API service and save response."
	self serviceResponseFromJson: (ZnClient new get: (url, '?secret=', secret))
