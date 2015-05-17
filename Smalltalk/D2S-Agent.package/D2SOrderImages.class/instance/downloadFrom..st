private
downloadFrom: url
	"Download one file."
	self downloadFrom: url to: (rootDirectory / (self fileName: url))
