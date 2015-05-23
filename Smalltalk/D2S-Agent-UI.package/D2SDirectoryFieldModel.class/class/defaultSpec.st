specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newRow: [ :row |
			row
				add: #labelModel origin: 0@0 corner: 0.3@0;
				add: #textModel origin: 0@0 corner: 0.65@0;
				add: #buttonModel origin: 0@0 corner: 0.05@0
		] height: StandardFonts defaultFont height + 5;
		yourself
