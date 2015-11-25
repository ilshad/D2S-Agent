private
loop
	[ isRunning ] whileTrue: [ self action; wait ]
