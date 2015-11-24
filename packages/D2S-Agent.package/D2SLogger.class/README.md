I'm logger utility. I supposed to be used as a singleton. This is why my full API is presented on class side. The API is only 1 method - puting a string into the log stream:

		D2SLogger << 'this is a log message'.

Log stream writes into 2 destinations: Transcript and log file named 'd2s.log' in image directory.

If the log message string starts with space character, I put empty lein first.
