private
logMessagePrefix
	| now |
	now := DateAndTime now rounded.
	^ '[D2S - ',
		((now asDate printFormat: #( 1 2 3 $. 1 1)) asString),
		' - ',
		(now asTime asString),
		'] '.

