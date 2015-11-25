private
wait
	"Stop caller thread for N seconds, where N is D2SConfig>>#timeout.
	Meanwhile it can be interrupted (obviously from other thread) by
	calling D2SScheduler>>#rush."
	countdown := self timeout.
	isWaiting := true.
	[ isWaiting ] whileTrue: [
		1 seconds asDelay wait.
		countdown := countdown - 1.
		countdown < 1 ifTrue: [ isWaiting := false ] ]


	
