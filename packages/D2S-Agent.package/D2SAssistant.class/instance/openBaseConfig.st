api
openBaseConfig
	self baseConfigModel updateDevices.
	(self baseConfigModel openWithSpec) window position: (270@110).
