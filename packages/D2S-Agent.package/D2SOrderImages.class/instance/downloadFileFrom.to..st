private
downloadFileFrom: url to: path
	D2SLogger << ('DOWNLOAD START: ', url).
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
	D2SLogger << ('DOWNLOAD DONE:', url).
