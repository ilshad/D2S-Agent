instance creation
newWithConfig: aConfig
	^ self new
		config: aConfig;
		updateModelsFromConfig;
		yourself