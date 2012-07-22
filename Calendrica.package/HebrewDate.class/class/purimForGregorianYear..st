holidays
purimForGregorianYear: aYear

	| hebrewYear hebrewMonth |
	hebrewYear := aYear - self epoch asGregorianDate year.
	hebrewMonth := self lastMonthOfYear: hebrewYear.
	^ self year: hebrewYear month: hebrewMonth  day: 14