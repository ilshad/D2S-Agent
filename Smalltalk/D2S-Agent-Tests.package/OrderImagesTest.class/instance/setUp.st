running
setUp
	rootPath := '/Users/astoon/Tmp/D2S-Agent-Tests'.
	baseUrl := 'http://s3-eu-west-1.amazonaws.com/d2s-test/images/'.
	fileNames := #('abcde1-Test-9x12.jpg' 'abcde2-Test-9x12.jpg' 'abcde3-Test-9x12.jpg').

	fileNames do: [
		:each || file |
		file := rootPath asFileReference / each.
		file exists ifTrue: [ file delete ]
		].
