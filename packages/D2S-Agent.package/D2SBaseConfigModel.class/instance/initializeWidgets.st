initialization
initializeWidgets
	noteModel := D2SNoteConfigModel newWithConfig: (D2SConfig singleton note).
	devicesModel := self newList.
	devicesModel displayBlock: [ :model | self instantiate: model ].
	self updateDevicesModel.
