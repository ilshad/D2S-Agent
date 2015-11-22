download
downloadOrderImages
	"Download all images in the order."
	ids := OrderedCollection new.
	urls do: [ :url || path |
		path := self orderDirectory / (self parseFileNameFromURL: url).
		self downloadFileFrom: url to: path.
		ids add: (self unitIdFromFileName: url) ]