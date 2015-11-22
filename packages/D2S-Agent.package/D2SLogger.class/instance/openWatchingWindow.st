ui building
openWatchingWindow
	| window morph |
	window := (SystemWindow labelled: self title) model: self.
	morph := RubPluggableTextMorph new
		getTextSelector: #contents;
		setTextSelector: #clear;
		on: self;
		beForSmalltalkScripting.
	window addMorph: morph frame: (0 @ 0 corner: 1 @ 1).
	^ window openInWorld