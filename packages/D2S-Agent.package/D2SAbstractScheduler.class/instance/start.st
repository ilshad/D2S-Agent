scheduling
start
	"It runs loop with action/wait in a new thread. This loop can be stopped by sending
	message D2SScheduler>>stop. Returns block in wich the loop is running."
	D2SLogger << 'hihihi'.
	isRunning := true.
	isError   := false.

	[ self loop ] fork

