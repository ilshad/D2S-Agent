tests
testDownload
	| rootDirectory baseUrl fileNames urls orderImages |
	rootDirectory := '/tmp/d2s-images'.
	baseUrl := 'http://s3-eu-west-1.amazonaws.com/d2s-test/images/'.
	fileNames := #('abcde1-Test-9x12.jpg' 'abcde2-Test-9x12.jpg' 'abcde3-Test-9x12.jpg').
	self removeFiles: fileNames from: (rootDirectory, '/test-order-id').
	urls := (fileNames collect: [ :i | baseUrl, i ]).
	
	orderImages := D2SOrderImages new.
	orderImages
		rootDirectory: '/tmp/d2s-images';
		orderId: 'test-order-id';
	 	urls: urls;
		downloadOrderImages.

	self assert: (orderImages ids asArray) equals: #('abcde1' 'abcde2' 'abcde3').

