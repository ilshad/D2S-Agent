private
deviceHeight: aConfig
	^ (#(#frontier #dry) includes: (aConfig protocol))
		ifTrue:  (ComposableModel toolbarHeight * 4)
		ifFalse: (ComposableModel toolbarHeight * 3)
