I implement Order-Images API Protocol.

I download images for an order from a service and store them locally. I know how to name downloaded files, how to extract unit ids from them, how to create required directories and save files locally.

All hardware-specific classes utilize me. I do not know how to name local directories for orders and were to create them. Hardware-specific classes take me that function as well as root orders directory path.

API:

#orderId: aNumber - set order id;
#urls: anArray - set image urls;
#rootDirectoryFromPath: aString - set full path to orders root directory;
#createDirectoryName: aBlock - specify procedure to generate directory name 
#download - download all order images;
#ids - get unit ids.

