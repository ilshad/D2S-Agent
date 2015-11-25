I am a scheduler.  I am intended to be used as a singleton:

	scheduler := D2SScheduler singleton.

My public methods are #start and #stop. When #start is called, it starts loop in a new thread. In this loop:
	- it calls #action,
	- then waits N seconds, where N is D2SConfig>>#timeout, 
	- repeats.

This loop can be stopped by calling #stop.

To cut off the waiting interval ASAP (and start #action without waiting N seconds), send mesage #rush.
