private
downloadNote: aUrl
	"Download note from URL into download directory."
	| path |
	path := directory / (self parseFileNameFromURL: aUrl).
	('NOTE: from ', aUrl) crLog.
	aUrl asZnUrl saveContentsToFile: path.
