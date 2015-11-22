I'm logger utility. I'm supposed to be used as a singleton. This is why my class side contains full API.
Someone may send me log message as a string:

	D2SLogger << 'this is a log message'.

And I add this message into 2 targets:
	1. Log file.
	2. Live watching stream.

Log file is plain text file d2s.log in filesystem, in directory of the image.

Live watching stream can be seen in the window:

	D2SLogger openWatchingWindow.

Live watching window is similar to Transcript, but it keeps a limit of  lines in its contents,  and when the next line 
over the limit comes, the oldest line is just dropped.
