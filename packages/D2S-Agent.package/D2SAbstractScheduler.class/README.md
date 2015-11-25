I am a scheduler. 

My main public methods are:  #start, #stop, #rush. When #start is called, it starts loop in a new thread. In this loop:
	- it calls #action,
	- then waits #timeout seconds, 
	- and repeats.

This loop can be stopped by calling #stop.

To cut off the waiting interval ASAP (and start #action next time without waiting #timeout seconds), send me the mesage #rush.

You can ask me if I'm currently running by #isRunning.

I am abstract class, and my implementers only need to implement:
	#timeout
	#action
