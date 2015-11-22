private
deleteNote: aUrl
	"Send DELETE request to service."
	ZnClient new delete: (aUrl, '?secret=', secret).
