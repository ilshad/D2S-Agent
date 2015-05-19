running
clean: fileNames from: rootPath
	fileNames do: [
		:each || file |
		file := rootPath asFileReference / each.
		file exists ifTrue: [ file delete ]
		].
