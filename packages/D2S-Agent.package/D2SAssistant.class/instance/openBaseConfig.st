api
openBaseConfig
	| announcer windowModel |
	announcer := D2SConfigUpdatedEvent announcer.
	windowModel := self baseConfigModel openWithSpec.
	windowModel window position: (270@110).
	windowModel whenClosedDo: [ announcer unsubscribe: D2SConfigUpdatedEvent ].
	announcer subscribe: D2SConfigUpdatedEvent do: [ (windowModel window) close; open ].
