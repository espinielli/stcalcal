holidays
sukkotForGregorianYear: aYear

	| hebrewYear |
	hebrewYear := 1 + aYear - self epoch asGregorianDate year.
	^ self year: hebrewYear month: HebrewMonth tishri day: 15.