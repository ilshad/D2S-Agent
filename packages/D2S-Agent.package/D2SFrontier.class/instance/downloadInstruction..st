private
downloadInstruction:  urlString
	"Downloads Condition.txt file and stores it in the order directory."
	 "urlString asZnUrl saveContentsToFile: (self orderDirectory / 'Condition.txt')"
	FileStream
		forceNewFileNamed: (self orderDirectory / 'Condition.txt')
		do: [ :fileStream || entity |
			fileStream text.
			entity := ZnClient new streaming: true; get: urlString; entity.
			entity writeOn: fileStream ]
