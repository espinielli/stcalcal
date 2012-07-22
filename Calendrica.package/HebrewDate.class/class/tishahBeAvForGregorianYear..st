holidays
tishahBeAvForGregorianYear: aYear

	| hebrewYear av9 |
	hebrewYear := aYear - self epoch asGregorianDate year.
	av9 := self year: hebrewYear month: HebrewMonth av day: 9.
	^ av9 dayOfWeek = Weekday saturday
		ifTrue: [av9 nextDay]
		ifFalse:[av9]