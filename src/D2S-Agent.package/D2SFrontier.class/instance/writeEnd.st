private
writeEnd
	"Put file end.txt into order directory"
	(self orderDirectory / 'end.txt') asFileReference ensureCreateFile.
