initialization
initializeWidgets

	labelModel  := self newLabel.
	textModel   := self newTextInput.
	buttonModel := self newImage.
	
	buttonModel image: (Smalltalk ui icons openIcon)
