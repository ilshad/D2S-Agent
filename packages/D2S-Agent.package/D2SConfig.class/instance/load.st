loading
load
	"Load config from remote resource."
	| url response config ids size |
	url      := self baseUrl, '/config?secret=', self secret.
	response := ZnClient new get: url.
	config   := NeoJSONReader fromString: response.
	size     := self devices size.
	self note url: (config at: 'note-url').
	(config at: 'devices') do: [ :i | self upsert: i].
	ids := (config at: 'devices') collect: [ :i | i at: 'id' ].
	self devices removeAllSuchThat: [ :i | (ids includes: i id) not ].
	(size = self devices size) ifFalse: [ D2SConfigUpdatedEvent new emit ]
