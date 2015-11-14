I implement Order-Images Protocol.

I download images specified in an order from the service and save them locally. I know how to name downloaded files, how to extract unit ids from them, how to create required directories and save files locally.

All device-specific classes utilize me. They may give me custom lambda (#fnDirectoryBaseName: aBlock) which returns proper order directory name, as well as root directory path (#rootDirectoryPath: aString).

Usage:

	orderImages := D2SOrderImages new.
	
	orderImages
		rootDirectory: '/tmp/d2s-images';
		orderId: '42';
		urls: anArray;
		downloadOrderImages.

	result := orderImages ids.
