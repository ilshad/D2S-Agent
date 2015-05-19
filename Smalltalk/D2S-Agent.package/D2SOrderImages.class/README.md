I implement Order-Images Protocol.

I download images for an order from a service and save them locally. I know how to name downloaded files, how to extract unit ids from them, how to create required directories and save files locally.

All device-specific classes utilize me. Please note that I don't know how to name local directories for orders and were to create them. This is why all device-specific classes take me lambda (#fnDirectoryBaseName: aBlock) which returns proper order directory name, as well as root directory path (#rootDirectoryPath: aString).

Usage:

	orderImages := D2SOrderImages new
		rootDirectory: '/tmp/d2s-images';
		orderId: '42';
		urls: anArray;
		downloadOrderImages.

	result := orderImages ids.
