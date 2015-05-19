private
serviceResponseFromJson: aString
	"Set service response with JSON encoded string."
	serviceResponse := NeoJSONReader fromString: aString