holidays
shavuotForGregorianYear: aYear

	| hebrewYear |
	hebrewYear := aYear - self epoch asGregorianDate year.
	^ self year: hebrewYear month: HebrewMonth sivan day: 6.