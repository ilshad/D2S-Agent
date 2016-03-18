initialization
announcer
	^ D2SAnnouncer ifNil: [ D2SAnnouncer := Announcer new ]
