running
setUp
	orderImages := D2SOrderImages new.
	orderImages serviceResponse: (Dictionary newFrom:
		{ 101 -> #('http://s3-eu-west-1.amazonaws.com/d2s-test/images/1.jpg'
	    		     'http://s3-eu-west-1.amazonaws.com/d2s-test/images/2.jpg'
	              'http://s3-eu-west-1.amazonaws.com/d2s-test/images/3.jpg').
		  102 -> #('http://s3-eu-west-1.amazonaws.com/d2s-test/images/4.jpg'
	              'http://s3-eu-west-1.amazonaws.com/d2s-test/images/5.jpg')}).

