io
downloadFiles: fileNames whichAreIds: ids
	| rootDirectory baseUrl urls orderImages |
	rootDirectory := '/tmp/d2s-images'.
	baseUrl := 'http://s3-eu-west-1.amazonaws.com/d2s-test/images/'.
	self removeFiles: fileNames from: (rootDirectory, '/test-order-id').
	urls := (fileNames collect: [ :i | baseUrl, i ]).
	
	orderImages := D2SOrderImages new.

	orderImages
		rootDirectory: '/tmp/d2s-images';
		orderId: 'test-order-id';
	 	urls: urls;
		downloadOrderImages.

	self assert: (orderImages ids asArray) equals: ids.
