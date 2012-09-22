holidays
tzomGedaliah

	| tishri3 |
	tishri3 := self class year: self year month: HebrewMonth av day: 9.
	^ tishri3 dayOfWeek = Weekday saturday
		ifTrue: [tishri3 nextDay]
		ifFalse:[tishri3]