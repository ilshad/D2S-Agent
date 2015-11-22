private
downloadInstruction:  urlString
	"Downloads Condition.txt file and stores it in the order directory."
	 urlString asZnUrl saveContentsToFile: (self orderDirectory / 'Condition.txt')
