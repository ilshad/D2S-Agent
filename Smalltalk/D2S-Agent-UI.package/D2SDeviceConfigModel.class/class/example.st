specs
example
	self new
		config: (D2SDeviceConfig newWithProtocol: #manual);
		updateModelsFromConfig;
		openWithSpec.