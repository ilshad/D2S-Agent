download
download
	"Download all images in order."
	urls do: [
		:url |
		ids add: (self unitId: url).
		self downloadFrom: url
	]