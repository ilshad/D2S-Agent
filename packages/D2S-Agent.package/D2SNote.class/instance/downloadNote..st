private
downloadNote: aUrl
	"Download note from URL into download directory."
	| path |
	path := directory / (self parseFileNameFromURL: aUrl).
	D2SLogger << ('NOTE: from ', aUrl).
	aUrl asZnUrl saveContentsToFile: path.
