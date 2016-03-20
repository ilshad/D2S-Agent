api
openBaseConfig
	self baseConfigModel updateDevicesModel.
	(self baseConfigModel openWithSpec) window position: (270@110).
