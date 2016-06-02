private
downloadNote: aUrl
	"Download note from URL into download directory."
	| path name |
	name := self parseFileNameFromURL: aUrl.
	path := directory / name.
	D2SLogger << ('NOTE: ', name).
	(aUrl, '?secret=', secret) asZnUrl saveContentsToFile: path.
