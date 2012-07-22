holidays
endingOfPassoverForGregorianYear: aYear

	| hebrewYear |
	hebrewYear := aYear - self epoch asGregorianDate year.
	^ self year: hebrewYear month: HebrewMonth nisan day: 21.