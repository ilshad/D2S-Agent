I am a scheduler. 

My main public methods are:  #start, #stop, #rush. When #start is called, it starts loop in a new thread. In this loop:
	- it calls #action,
	- then waits N seconds, where N is D2SConfig>>#timeout, 
	- repeats.

This loop can be stopped by calling #stop.

To cut off the waiting interval ASAP (and start #action next time without waiting N seconds), send mesage #rush.

You can ask me if I'm currently running by #isRunning.