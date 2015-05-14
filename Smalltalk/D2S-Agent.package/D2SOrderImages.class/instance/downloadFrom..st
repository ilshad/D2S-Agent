private
downloadFrom: url
	"Download one file."
	| fileName path |
	fileName := self fileName: url.
	path := rootDirectory / fileName.
	self downloadFrom: url to: path.
