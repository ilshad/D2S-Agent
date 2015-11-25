scheduling
start
	"It runs loop action/wait in new thread. This loop can be stopped by sending
	message D2SScheduler>>stop."
	isRunning := true.
	[ self loop ] fork.
