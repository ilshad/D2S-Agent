as yet unclassified
label
	| s |
	s := self title.
	s ifEmpty: [ s := '(', self protocol asString, ')' ].
	^ s, ' [', self id,  ']'
