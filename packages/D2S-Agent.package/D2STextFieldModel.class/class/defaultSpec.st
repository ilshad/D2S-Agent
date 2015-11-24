specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newRow: [ :row |
			row
				add: #labelModel origin: 0@0 corner: 0.25@0;
				add: #textModel origin: 0@0 corner: 0.75@0
		] height: StandardFonts defaultFont height + 5;
		yourself
