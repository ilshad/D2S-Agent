as yet unclassified
setUp	
	rootPath := '/Users/astoon/Tmp/D2S-Agent-Tests'.
	localPathSingle := '/Users/astoon/Tmp/D2S-Agent-Tests/1.jpg'.
	downloadPathSingle := 'http://s3-eu-west-1.amazonaws.com/d2s-test/images/1.jpg'.
	
	#('1.jpg' '2.jpg' '3.jpg') do: [
		:each || file |
		file := rootPath asFileReference / each.
		file exists ifTrue: [ file delete ]
		].
