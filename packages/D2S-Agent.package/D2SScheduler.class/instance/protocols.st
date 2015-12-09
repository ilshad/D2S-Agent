private
protocols
	^ Dictionary newFrom: {
		#manual     ->   [ D2SManual   new ].
		#frontier   ->   [ D2SFrontier new ].
		#dry        ->   [ D2SFrontier new ]
		}
