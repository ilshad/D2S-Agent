as yet unclassified
testDownloadFrom

	D2SOrderImages new
		orderId: 42;
		rootDirectoryFromPath: rootPath;
		createDirectoryName: [ :orderId | orderId asString ];
		downloadFrom: downloadPathSingle.
