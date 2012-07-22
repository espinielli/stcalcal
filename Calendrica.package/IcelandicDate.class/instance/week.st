accessing
week

	| start |
	start := self season = Season summer
		ifTrue: [self class summerForGregorianYear: self year]
		ifFalse:[self class winterForGregorianYear: self year].
	^ 1 + ((self rd - start rd) // 7)