private
deviceHeight: aConfig
	^ (#(#frontier #dry) includes: (aConfig protocol))
		ifTrue:  (ComposableModel toolbarHeight * 5)
		ifFalse: (ComposableModel toolbarHeight * 4)
