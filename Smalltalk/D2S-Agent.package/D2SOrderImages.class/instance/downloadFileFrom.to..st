private
downloadFileFrom: url to: path
	FileStream
		newFileNamed: path
		do: [ :fileStream || entity |
				fileStream binary.
				entity := ZnClient new
					streaming: true;
					get: url;
					entity.
				entity writeOn: fileStream ]