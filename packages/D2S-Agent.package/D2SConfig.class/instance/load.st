loading
load
	"Load config from remote resource."
	| url response config ids |
	url      := self baseUrl, '/config?secret=', self secret.
	response := ZnClient new get: url.
	config   := NeoJSONReader fromString: response.
	self note url: (config at: 'note-url').
	(config at: 'devices') do: [ :i | self upsert: i].
	ids := (config at: 'devices') collect: [ :i | i at: 'id' ].
	self devices copy doWithIndex: [ :each :index |
		(ids includes: each id) ifFalse: [
			self devices removeAt: index.
			D2SConfigUpdatedEvent new emit.
			]
		]
