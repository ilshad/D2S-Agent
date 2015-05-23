private
label
	| s |
	s := config title.
	s ifEmpty: [ s := '(', config protocol asString, ')' ].
	^ s, ' [', config id,  ']'