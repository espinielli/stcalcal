holidays
tzomGedaliahForGregorianYear: aYear

	| hebrewYear tishri3 |
	hebrewYear := 1 + aYear - self epoch asGregorianDate year.
	tishri3 := self year: hebrewYear month: HebrewMonth av day: 9.
	^ tishri3 dayOfWeek = Weekday saturday
		ifTrue: [tishri3 nextDay]
		ifFalse:[tishri3]