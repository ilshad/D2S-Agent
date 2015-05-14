as yet unclassified
testDownloadFromTo

	D2SOrderImages new
		downloadFrom: downloadPathSingle
		to: localPathSingle.
	
	self assert: localPathSingle asFileReference exists equals: true.
