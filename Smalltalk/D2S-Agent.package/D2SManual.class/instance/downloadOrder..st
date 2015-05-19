private
downloadOrder: orderId
	"Does Order-Images API protocol."
	orderImages
		orderId: orderId;
		urls: (serviceResponse at: orderId).