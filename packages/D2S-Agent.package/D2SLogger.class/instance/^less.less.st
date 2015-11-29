streaming
<< aString
	"Put string with special prefix (datetime, etc) into the log.
	If string starts with space, put empty line first.
	If string ends with '...', do not put cr at the end.
	If string starts with '...', do not put prefix at the start."
	| msg isCr isPrefixed |

	isPrefixed := (aString matchesRegex: '^\.\.\..*') not.
	isCr       := (aString matchesRegex: '.*\.\.\.$') not.

	msg := isPrefixed
		ifTrue: (self logMessagePrefix, aString trim)
		ifFalse: (aString trim; trimLeft: [ :char | char = $. ]).

	(aString byteAt: 1) = 32	ifTrue: [ Transcript cr. self writeFile: '' isCr: true ].

	self writeFile: msg isCr: isCr.
	Transcript show: msg.
	isCr ifTrue: [ Transcript cr. ]
