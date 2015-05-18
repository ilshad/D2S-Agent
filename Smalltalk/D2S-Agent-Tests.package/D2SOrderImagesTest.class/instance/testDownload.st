tests
testDownload
	| orderImages |
	orderImages := D2SOrderImages new.
	orderImages
		orderId: 42;
		rootDirectoryPath: rootPath;
		createDirectoryName: [ :orderId | orderId asString ];
	 	urls: (fileNames collect: [ :i | baseUrl, i ]);
		download.

	self assert: (orderImages ids asArray) equals: #('abcde1' 'abcde2' 'abcde3').

