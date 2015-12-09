private
deviceHeight: aConfig
	^ ((aConfig protocol) = #frontier)
		ifTrue:  (ComposableModel toolbarHeight * 4)
		ifFalse: (ComposableModel toolbarHeight * 3)
