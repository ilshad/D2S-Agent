tests
testDownloadOrder
	| orderImages |
	orderImages := D2SOrderImages new.
	orderImages
		orderId: 42;
		rootDirectoryFromPath: rootPath;
		createDirectoryName: [ :orderId | orderId asString ];
	 	urls: #('http://s3-eu-west-1.amazonaws.com/d2s-test/images/1.jpg'
	    		  'http://s3-eu-west-1.amazonaws.com/d2s-test/images/2.jpg'
	           'http://s3-eu-west-1.amazonaws.com/d2s-test/images/3.jpg');
		download.

	self assert: (orderImages ids asArray) equals: #('1.jpg' '2.jpg' '3.jpg').

