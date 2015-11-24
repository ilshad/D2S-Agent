private
downloadFileFrom: url to: path
	D2SLogger << ('Start download from: ', url).
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
	D2SLogger << ('Saved to: ', path fullName).
