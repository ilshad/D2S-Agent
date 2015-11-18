private
downloadFileFrom: url to: path
	FileStream
		forceNewFileNamed: path
		do: [ :fileStream |
				| entity |
				fileStream binary.
				self log: url.
				entity := ZnClient new
					streaming: true;
					get: url;
					entity.
				entity writeOn: fileStream ]
