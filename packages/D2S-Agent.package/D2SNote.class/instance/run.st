running
run
	self requestService.
	serviceResponse do: [ :noteUrl |
		self downloadNote: noteUrl.
		self deleteNote:   noteUrl. ]
