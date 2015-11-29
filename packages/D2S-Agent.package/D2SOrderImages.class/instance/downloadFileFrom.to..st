private
downloadFileFrom: url to: path
	D2SLogger << ('Downloading: ', (self parseFileNameFromURL: url), ' ...').
	FileStream
		forceNewFileNamed: path
		do: [ :fileStream |
				| entity |
				fileStream binary.
				entity := ZnClient new
					streaming: true;
					get: url;
					entity.
				entity writeOn: fileStream ].
	D2SLogger << '...done.'.
