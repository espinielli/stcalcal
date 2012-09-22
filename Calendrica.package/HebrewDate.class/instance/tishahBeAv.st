holidays
tishahBeAv

	| av9 |
	av9 := self class year: self year month: HebrewMonth av day: 9.
	^ av9 dayOfWeek = Weekday saturday
		ifTrue: [av9 nextDay]
		ifFalse:[av9]